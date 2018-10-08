package org.motechproject.scheduler.constants;

/**
 * Contains constants used for securing parts of the scheduler module.
 */
public final class SchedulerRoles {
    public static final String VIEW_SCHEDULER_JOBS = "hasAuthority('viewSchedulerJobs')";

    private SchedulerRoles() {

    }
}
