package org.motechproject.mds.util;

import org.apache.commons.beanutils.MethodUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.motechproject.mds.ex.object.PropertyCopyException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.ReflectionUtils;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * The <code>PropertyUtil</code> util class provides the same method like
 * {@link org.apache.commons.beanutils.PropertyUtils} and two additional methods for safe writing
 * and reading property in the given bean.
 */
public final class PropertyUtil extends PropertyUtils {
    private static final Logger LOGGER = LoggerFactory.getLogger(PropertyUtil.class);

    private PropertyUtil() {
    }

    public static PropertyDescriptor[] getPropertyDescriptors(Object bean) {
        PropertyDescriptor[] descriptors = PropertyUtils.getPropertyDescriptors(bean);

        for (PropertyDescriptor descriptor : descriptors) {
            boolean isBoolean = Boolean.class.isAssignableFrom(descriptor.getPropertyType());
            boolean isPrimitiveBoolean = boolean.class.isAssignableFrom(descriptor.getPropertyType());
            boolean hasReadMethod = null != descriptor.getReadMethod();

            if ((isBoolean || isPrimitiveBoolean) && !hasReadMethod) {
                String propName = StringUtils.capitalize(descriptor.getName());
                Class<?> beanClass = bean.getClass();

                Method get = MethodUtils.getMatchingAccessibleMethod(beanClass, "get" + propName, new Class[0]);
                Method is = MethodUtils.getMatchingAccessibleMethod(beanClass, "is" + propName, new Class[0]);

                try {
                    if (null != get) {
                        descriptor.setReadMethod(get);
                    } else if (null != is) {
                        descriptor.setReadMethod(is);
                    }
                } catch (IntrospectionException e) {
                    LOGGER.error("Can't set read method for property: {}", propName, e);
                }
            }
        }

        return descriptors;
    }

    public static void safeSetCollectionProperty(Object bean, String name, Collection values) {
        try {
            Class collectionType = getPropertyType(bean, name);
            Collection property = instantiateCollection(collectionType);
            for (Object value : values) {
                property.add(value);
            }
            safeSetProperty(bean, name, property);
        } catch (IllegalArgumentException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            LOGGER.error(
                    "There was a problem with set values {} for property {} in bean: {}",
                    values, name, bean, e);
        }
    }

    private static Collection instantiateCollection(Class collectionType) {
        if (collectionType.isAssignableFrom(Set.class)) {
            return new HashSet();
        } else if (collectionType.isAssignableFrom(List.class)) {
            return new ArrayList();
        } else if (collectionType.isAssignableFrom(Collection.class)) {
            return new ArrayList();
        } else {
            throw new IllegalArgumentException("Provided class is not a collection");
        }
    }

    public static void safeSetProperty(Object bean, String name, Object value) {
        try {
            if (null != bean) {
                if (isWriteable(bean, name)) {
                    setProperty(bean, name, value);
                } else if (Character.isUpperCase(name.charAt(0))) {
                    safeSetProperty(bean, StringUtils.uncapitalize(name), value);
                }
            }
        } catch (IllegalArgumentException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            LOGGER.error(
                    "There was a problem with set value {} for property {} in bean: {}",
                    value, name, bean, e);
        }
    }

    public static Object safeGetProperty(Object bean, String name) {
        Object value = null;

        try {
            if (null != bean) {
                if (isReadable(bean, name)) {
                    value = getProperty(bean, name);
                } else if (Character.isUpperCase(name.charAt(0))) {
                    return safeGetProperty(bean, StringUtils.uncapitalize(name));
                }
            }
        } catch (IllegalArgumentException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            LOGGER.error(
                    "There was a problem with get value of property {} in bean: {}", name, bean, e
            );
        }

        return value;
    }

    public static Class<?> safeGetPropertyType(Object bean, String name) {
        Class<?> type = null;
        try {
            if (null != bean && isReadable(bean, name)) {
                type = getPropertyType(bean, name);
            }
        } catch (IllegalArgumentException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            LOGGER.error("Cannot get property type of {} in {}: ", name, bean, e);
        }
        return type;
    }

    public static void copyProperties(Object target, Object object) {
        copyProperties(target, object, null);
    }

    public static void copyProperties(Object target, Object object,
                                      Set<String> fieldsToUpdate) {
        Class objectClass = target.getClass();

        for (PropertyDescriptor descriptor :
                PropertyUtils.getPropertyDescriptors(objectClass)) {

            if (fieldsToUpdate != null && !fieldsToUpdate.contains(descriptor.getName())) {
                // if we have a list of fields to udpate, then skip if this field is not on it
                continue;
            }

            if (ArrayUtils.contains(Constants.Util.GENERATED_FIELD_NAMES, descriptor.getName())) {
                // we skip generated fields
                continue;
            }

            if (!readWriteAccessible(objectClass, descriptor)) {
                continue;
            }

            try {
                Object val = readValue(object, descriptor);
                writeValue(target, val, descriptor);
            } catch (InvocationTargetException | IllegalAccessException e) {
                throw new PropertyCopyException("Unable to copy properties for " + objectClass.getName(), e);
            }
        }
    }

    private static boolean readWriteAccessible(Class objectClass, PropertyDescriptor descriptor) {
        Method readMethod = descriptor.getReadMethod();
        if (readMethod == null) {
            Field field = ReflectionUtils.findField(objectClass, descriptor.getName());
            if (fieldNotAccessible(field)) {
                return false;
            }
        }

        Method writeMethod = descriptor.getWriteMethod();
        if (writeMethod == null) {
            Field field = ReflectionUtils.findField(objectClass, descriptor.getName());
            if (fieldNotAccessible(field)) {
                return false;
            }
        }

        return true;
    }

    private static Object readValue(Object obj, PropertyDescriptor descriptor)
            throws InvocationTargetException, IllegalAccessException {
        Method readMethod = descriptor.getReadMethod();

        if (readMethod == null) {
            // if no getter we get value through the field
            Field field = ReflectionUtils.findField(obj.getClass(), descriptor.getName());
            return field.get(obj);
        } else {
            return readMethod.invoke(obj);
        }
    }

    private static void writeValue(Object target, Object val, PropertyDescriptor descriptor)
            throws InvocationTargetException, IllegalAccessException {
        Method writeMethod = descriptor.getWriteMethod();

        if (writeMethod == null) {
            // fallback to the field
            Field field = ReflectionUtils.findField(target.getClass(), descriptor.getName());
            // set the field value
            field.set(target, val);
        } else {
            // call the getter
            writeMethod.invoke(target, val);
        }
    }

    private static boolean fieldNotAccessible(Field field) {
        return field == null || !field.isAccessible();
    }
}
