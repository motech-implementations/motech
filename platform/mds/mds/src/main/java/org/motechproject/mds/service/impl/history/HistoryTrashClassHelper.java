package org.motechproject.mds.service.impl.history;

import org.motechproject.mds.domain.ComboboxHolder;
import org.motechproject.mds.domain.EntityType;
import org.motechproject.mds.domain.Type;
import org.motechproject.mds.util.ClassName;
import org.osgi.framework.BundleContext;
import org.osgi.framework.wiring.BundleWiring;

import static org.apache.commons.lang3.StringUtils.uncapitalize;

/**
 * Contains utility methods for dealing with history and trash clasess
 */
public final class HistoryTrashClassHelper {

    public static Class<?> getClass(Object src, EntityType type, BundleContext bundleContext) {
        return getClass(getInstanceClassName(src), type, bundleContext);
    }

    public static Class<?> getClass(String srcClassName, EntityType type, BundleContext bundleContext) {
        String className;

        switch (type) {
            case HISTORY:
                className = ClassName.getHistoryClassName(srcClassName);
                break;
            case TRASH:
                className = ClassName.getTrashClassName(srcClassName);
                break;
            default:
                className = null;
        }

        try {
            ClassLoader entitiesClassLoader = bundleContext.getBundle().adapt(BundleWiring.class).getClassLoader();
            return null == className ? null : entitiesClassLoader.loadClass(className);
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String getInstanceClassName(Object instance) {
        return null == instance ? "" : instance.getClass().getName();
    }

    public static String getMethodParameterType(Type type, ComboboxHolder holder) {
        String methodParameterType;

        if (type.isCombobox() && null != holder) {
            methodParameterType = holder.getTypeClassName();
        } else {
            methodParameterType = type.getTypeClassName();
        }

        return methodParameterType;
    }

    public static String currentVersion(Class<?> historyClass) {
        return uncapitalize(historyClass.getSimpleName() + "CurrentVersion");
    }

    public static String schemaVersion(Class<?> historyClass) {
        return uncapitalize(historyClass.getSimpleName() + "SchemaVersion");
    }

    public static String trashFlag(Class<?> historyClass) {
        return uncapitalize(historyClass.getSimpleName() + "FromTrash");
    }

    private HistoryTrashClassHelper() {
    }
}
