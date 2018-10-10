package org.motechproject.tasks.domain;

import org.apache.commons.lang3.StringUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;

public class SettingsDto {

    private String taskPossibleErrors;

    public String getTaskPossibleErrors() {
        return taskPossibleErrors;
    }

    public void setTaskPossibleErrors(String taskPossibleErrors) {
        this.taskPossibleErrors = taskPossibleErrors;
    }

    @JsonIgnore
    public boolean isValid() {
        if (StringUtils.isEmpty(taskPossibleErrors) || !StringUtils.isNumeric(taskPossibleErrors)) {
            return false;
        }
        return true;
    }

}
