package org.motechproject.mds.annotations.internal;

import org.apache.commons.lang3.StringUtils;
import org.motechproject.mds.dto.LookupDto;

import java.util.List;
import java.util.Map;

/**
 * Represents the result of processing the bundle, by the {@link org.motechproject.mds.annotations.internal.MDSAnnotationProcessor}.
 * The fields contain representations of entities and lookups, based on the discovered annotations.
 */
public class MDSProcessorOutput {

    private List<EntityProcessorOutput> entityProcessorOutputs;
    private Map<String, List<LookupDto>> lookupProcessorOutputs;


    public MDSProcessorOutput(List<EntityProcessorOutput> entityProcessorOutputs, Map<String, List<LookupDto>> lookupProcessorOutputs) {
        this.entityProcessorOutputs = entityProcessorOutputs;
        this.lookupProcessorOutputs = lookupProcessorOutputs;
    }

    public List<EntityProcessorOutput> getEntityProcessorOutputs() {
        return entityProcessorOutputs;
    }

    public void setEntityProcessorOutputs(List<EntityProcessorOutput> entityProcessorOutputs) {
        this.entityProcessorOutputs = entityProcessorOutputs;
    }

    public Map<String, List<LookupDto>> getLookupProcessorOutputs() {
        return lookupProcessorOutputs;
    }

    public void setLookupProcessorOutputs(Map<String, List<LookupDto>> lookupProcessorOutputs) {
        this.lookupProcessorOutputs = lookupProcessorOutputs;
    }

    public EntityProcessorOutput getEntityProcessorOutputByClassName(String className) {

        for (EntityProcessorOutput entityProcessorOutput : entityProcessorOutputs) {
            if (StringUtils.equals(entityProcessorOutput.getEntityProcessingResult().getClassName(), className)) {
                return entityProcessorOutput;
            }
        }

        return null;
    }
}
