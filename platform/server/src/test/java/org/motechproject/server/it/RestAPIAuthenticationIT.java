package org.motechproject.server.it;

import org.apache.commons.httpclient.HttpStatus;
import org.apache.http.Header;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.util.EntityUtils;
import org.hamcrest.core.Is;
import org.json.JSONException;
import org.junit.Before;
import org.junit.Test;
import org.motechproject.testing.tomcat.BaseTomcatIT;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;

import static junit.framework.Assert.assertEquals;
import static junit.framework.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

public class RestAPIAuthenticationIT extends BaseTomcatIT {
    private final Logger logger = LoggerFactory.getLogger(getClass());

    //@Before
    // TODO: make @Before work with mvn install -PIT
    public void setUp() throws Exception {
        logger.info("Waiting for tomcat in setup");
        waitForTomcat();
        logger.info("Tomcat has started");
        logger.info("Creating admin user");
        createAdminUser();
        logger.info("Admin user is created");
        logger.info("Logging out admin user");
        logout();
        logger.info("Admin user is logged out");
    }

    @Test
    public void testThatItShouldAllowRestApiAccessAfterFormAuthentication() throws Exception {

        setUp();

        HttpGet statusRequest =
                new HttpGet(String.format("http://%s:%d/motech-platform-server/module/server/web-api/status", HOST, PORT));

        HttpResponse response = HTTP_CLIENT.execute(statusRequest, HttpStatus.SC_UNAUTHORIZED);
        assertEquals(HttpStatus.SC_UNAUTHORIZED, response.getStatusLine().getStatusCode());
        logger.info("Step 1 complete");

        Header authenticateHeader = response.getFirstHeader(HttpHeaders.WWW_AUTHENTICATE);
        assertNotNull(authenticateHeader);

        String authenticateHeaderValue = authenticateHeader.getValue();
        assertThat(authenticateHeaderValue, Is.is("Basic realm=\"MOTECH\""));

        EntityUtils.consume(response.getEntity());

        // Wait for roles to get updated
        Thread.sleep(10 * 1000); // 10 sec
        login();
        logger.info("Step 2 complete");
        HttpResponse statusResponse = HTTP_CLIENT.execute(statusRequest);
        assertEquals(HttpStatus.SC_OK, statusResponse.getStatusLine().getStatusCode());
        logger.info("Step 3 complete");
    }
}
