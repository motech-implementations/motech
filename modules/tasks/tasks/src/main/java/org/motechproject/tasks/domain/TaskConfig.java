package org.motechproject.tasks.domain;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.Predicate;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import org.motechproject.mds.annotations.Access;
import org.motechproject.mds.annotations.Cascade;
import org.motechproject.mds.annotations.CrudEvents;
import org.motechproject.mds.annotations.Entity;
import org.motechproject.mds.annotations.Field;
import org.motechproject.mds.annotations.Ignore;
import org.motechproject.mds.event.CrudEventType;
import org.motechproject.mds.util.SecurityMode;
import org.motechproject.tasks.constants.TasksRoles;
import org.motechproject.tasks.json.TaskConfigDeserializer;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.SortedSet;
import java.util.TreeSet;

import static org.apache.commons.collections4.CollectionUtils.isNotEmpty;

/**
 * Represents a single task configuration. Task configuration is a list of {@link TaskConfigStep}s that are taken during
 * task execution. A single step can be a filter(whose conditions must be meet) or a data store that must be fetched
 * in order to execute the task successfully.
 */
@Entity(recordHistory = true)
@CrudEvents(CrudEventType.NONE)
@JsonDeserialize(using = TaskConfigDeserializer.class)
@Access(value = SecurityMode.PERMISSIONS, members = {TasksRoles.MANAGE_TASKS})
public class TaskConfig implements Serializable {
    private static final long serialVersionUID = -3796700837710354216L;

    @Field
    @Cascade(delete = true)
    private List<FilterSet> filters;

    @Field
    @Cascade(delete = true)
    private List<DataSource> dataSources;

    @Ignore
    public SortedSet<TaskConfigStep> getSteps() {
        SortedSet<TaskConfigStep> steps = new TreeSet<>();

        steps.addAll(getFilters());
        steps.addAll(getDataSources());

        return steps;
    }

    @JsonIgnore
    public List<FilterSet> getFilters() {
        if (filters == null) {
            filters = new ArrayList<>();
        }
        return filters;
    }

    @JsonIgnore
    public void setFilters(List<FilterSet> filters) {
        this.filters = filters;
    }

    @JsonIgnore
    public List<DataSource> getDataSources() {
        if (dataSources == null) {
            dataSources = new ArrayList<>();
        }
        return dataSources;
    }

    @JsonIgnore
    public void setDataSources(List<DataSource> dataSources) {
        this.dataSources = dataSources;
    }

    @JsonIgnore
    public SortedSet<DataSource> getDataSources(Long providerId) {
        SortedSet<DataSource> set = new TreeSet<>();

        for (DataSource source : getDataSources()) {
            if (source.getProviderId().equals(providerId)) {
                set.add(source);
            }
        }

        return set;
    }

    /**
     * Returns the data source for the given information.
     *
     * @param providerId  the provider ID
     * @param objectId  the object ID
     * @param objectType  the object type
     * @return the object matching the given data.
     */
    @JsonIgnore
    public DataSource getDataSource(final Long providerId, final Long objectId,
                                    final String objectType) {
        return (DataSource) CollectionUtils.find(getDataSources(), new Predicate() {
            @Override
            public boolean evaluate(Object object) {
                return object instanceof DataSource
                        && ((DataSource) object).objectEquals(providerId, objectId, objectType);
            }
        });
    }

    /**
     * Clears filter sets and data sources for this object.
     *
     * @return this object
     */
    public TaskConfig removeAll() {
        removeFilterSets();
        removeDataSources();

        return this;
    }

    /**
     * Clears filter sets for this object.
     *
     * @return this object
     */
    public TaskConfig removeFilterSets() {
        getFilters().clear();
        return this;
    }

    /**
     * Clears data sources for this object.
     *
     * @return this object
     */
    public TaskConfig removeDataSources() {
        getDataSources().clear();
        return this;
    }

    /**
     * Stores the given configuration steps.
     *
     * @param configSteps  the configuration steps, not null
     * @return this object
     */
    public TaskConfig add(TaskConfigStep... configSteps) {
        for (TaskConfigStep step : configSteps) {
            step.setOrder(getNextOrderNumber());

            if (step instanceof FilterSet) {
                getFilters().add((FilterSet) step);
            } else if (step instanceof DataSource) {
                getDataSources().add((DataSource) step);
            }
        }

        return this;
    }

    /**
     * Stores the given configuration steps
     *
     * @param set  the configuration steps
     * @return this object
     */
    public TaskConfig addAll(SortedSet<TaskConfigStep> set) {
        if (isNotEmpty(set)) {
            SortedSet<TaskConfigStep> steps = getSteps();

            for (TaskConfigStep step : set) {
                if (!steps.contains(step)) {
                    add(step);
                }
            }
        }

        return this;
    }

    @Ignore
    private Integer getNextOrderNumber() {
        Integer order;

        try {
            order = getSteps().last().getOrder() + 1;
        } catch (NoSuchElementException e) {
            order = 0;
        }

        return order;
    }

    @Override
    public int hashCode() {
        return Objects.hash(getFilters(), getDataSources());
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }

        final TaskConfig other = (TaskConfig) obj;

        return Objects.equals(this.getFilters(), other.getFilters())
                && Objects.equals(this.getDataSources(), other.getDataSources());
    }

    @Override
    public String toString() {
        return String.format("TaskConfig{steps=%s}", getSteps());
    }

}
