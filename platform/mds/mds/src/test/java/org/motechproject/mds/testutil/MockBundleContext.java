package org.motechproject.mds.testutil;

import org.osgi.framework.*;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Properties;

public class MockBundleContext extends org.eclipse.gemini.blueprint.mock.MockBundleContext implements BundleContext {
    private Object service;

    public MockBundleContext() {
        super();
    }

    public MockBundleContext(Bundle bundle) {
        super(bundle);
    }

    public MockBundleContext(Bundle bundle, Properties props) {
        super(bundle, props);
    }

    @Override
    public Object getService(ServiceReference reference) {
        Object result = null;
        if (service != null) {
            // return the service only if the the class matches the one from the reference
            try {
                Class<?> refClass = getClass().getClassLoader().loadClass(reference.getProperty("objectClass").toString());
                if (refClass.isAssignableFrom(service.getClass())) {
                    result = service;
                }
            } catch (ClassNotFoundException e) {
                result = null;
            }
        }
        return result;
    }

    public void setService(Object service) {
        this.service = service;
    }

    @Override
    public <S> ServiceRegistration<S> registerService(Class<S> clazz, S service, Dictionary<String, ?> properties) {
        return null;
    }

    @Override
    public <S> ServiceRegistration<S> registerService(Class<S> clazz, ServiceFactory<S> service, Dictionary<String, ?> properties) {
        return null;
    }

    @Override
    public <S> ServiceReference<S> getServiceReference(Class<S> clazz) {
        return null;
    }



    @Override
    public <S> ServiceObjects<S> getServiceObjects(ServiceReference<S> serviceReference) {
        return null;
    }

    @Override
    public <S> Collection<ServiceReference<S>> getServiceReferences(Class<S> clazz, String filter) throws InvalidSyntaxException {
        return null;
    }

    @Override
    public Bundle getBundle(String location) {
        return null;
    }
}
