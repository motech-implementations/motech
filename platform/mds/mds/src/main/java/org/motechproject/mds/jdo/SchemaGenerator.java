package org.motechproject.mds.jdo;


import org.flywaydb.core.Flyway;
import org.apache.commons.io.IOUtils;
import org.datanucleus.NucleusContext;
import org.datanucleus.StoreNucleusContext;
import org.datanucleus.api.jdo.JDOPersistenceManagerFactory;
import org.datanucleus.store.rdbms.datasource.dbcp.BasicDataSource;
import org.datanucleus.store.schema.SchemaAwareStoreManager;
import org.motechproject.mds.config.MdsConfig;
import org.motechproject.mds.service.JarGeneratorService;
import org.motechproject.mds.util.ClassName;
import org.motechproject.mds.util.Constants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.ClassPathResource;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;

/**
 * The schema generator class is responsible for generating the table schema
 * for entities and for running entities migrations upon start. Schema for
 * all entity classes has to be generated, otherwise issues might arise in
 * foreign key generation for example. This code runs in the generated entities
 * bundle.
 */
public class SchemaGenerator implements InitializingBean {

    public  static final String CONNECTION_DRIVER_KEY = "javax.jdo.option.ConnectionDriverName";

    public  static final String CONNECTION_URL_KEY = "javax.jdo.option.ConnectionURL";

    public  static final String CONNECTION_USER_NAME_KEY = "javax.jdo.option.ConnectionUserName";

    public  static final String CONNECTION_USER_PASSWORD_KEY = "javax.jdo.option.ConnectionPassword";

    private static final Logger LOGGER = LoggerFactory.getLogger(SchemaGenerator.class);

    private JDOPersistenceManagerFactory persistenceManagerFactory;

    @Autowired
    @Qualifier("mdsSqlProperties")
    private Properties mdsSqlProperties;

    @Autowired
    private MdsConfig mdsConfig;

    public SchemaGenerator(JDOPersistenceManagerFactory persistenceManagerFactory) {
        this.persistenceManagerFactory = persistenceManagerFactory;
    }

    @Override
    public void afterPropertiesSet() throws IOException {
        generateSchema();
        runMigrations();
    }

    public void generateSchema() throws IOException {
        LOGGER.debug("Starting to generate entity schema.");

        Set<String> classNames = classNames();
        if (!classNames.isEmpty()) {
            try {
                SchemaAwareStoreManager storeManager = getStoreManager();
                storeManager.createSchemaForClasses(classNames, new Properties());
            }
            catch (Exception|Error e) {
                throw e;
            }
        }

        LOGGER.info("Entity schema generation completed.");
    }

    public void runMigrations() {
        LOGGER.debug("Starting the flyway modules migrations.");
        File migrationDirectory = mdsConfig.getFlywayMigrationDirectory();
        //No migration directory
        if (!migrationDirectory.exists()) {
            LOGGER.debug("The migration directory doesn't exist. Skipping migration.");
            return;
        }

        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName(mdsSqlProperties.getProperty(CONNECTION_DRIVER_KEY));
        dataSource.setUrl(mdsSqlProperties.getProperty(CONNECTION_URL_KEY));
        dataSource.setUsername(mdsSqlProperties.getProperty(CONNECTION_USER_NAME_KEY));
        dataSource.setPassword(mdsSqlProperties.getProperty(CONNECTION_USER_PASSWORD_KEY));

        Flyway flyway = new Flyway();
        flyway.setDataSource(dataSource);

        flyway.setLocations(Constants.EntitiesMigration.FILESYSTEM_PREFIX + migrationDirectory.getAbsolutePath());
        flyway.setSqlMigrationPrefix(Constants.EntitiesMigration.ENTITY_MIGRATIONS_PREFIX);
        flyway.setOutOfOrder(true);
        // TODO UPGRADE Check if it is the correct alternative for setInitOnMigrate
        flyway.setValidateOnMigrate(false);

        flyway.migrate();
        LOGGER.info("Modules migration completed.");
    }

    private Set<String> classNames() throws IOException {
        Set<String> classNames = new HashSet<>();
        Set<String> historyClassNames = new HashSet<>();
        ClassPathResource resourceClassNames = new ClassPathResource(JarGeneratorService.ENTITY_LIST_FILE);
        ClassPathResource resourceHistory = new ClassPathResource(JarGeneratorService.HISTORY_LIST_FILE);

        if (resourceHistory.exists()) {
            try (InputStream in = resourceHistory.getInputStream()) {
                for (Object line : IOUtils.readLines(in)) {
                    String className = (String) line;
                    historyClassNames.add(className);
                }
            }
        }

        if (resourceClassNames.exists()) {
            try (InputStream in = resourceClassNames.getInputStream()) {
                for (Object line : IOUtils.readLines(in)) {
                    String className = (String) line;

                    classNames.add(className);
                    if (historyClassNames.contains(className)) {
                        classNames.add(ClassName.getHistoryClassName(className));
                    }
                    classNames.add(ClassName.getTrashClassName(className));
                }
            }
        } else {
            LOGGER.warn("List of entity ClassNames is unavailable");
        }

        return classNames;
    }

    private SchemaAwareStoreManager getStoreManager() {
        StoreNucleusContext nucleusContext = persistenceManagerFactory.getNucleusContext();
        return (SchemaAwareStoreManager) nucleusContext.getStoreManager();
    }
}
