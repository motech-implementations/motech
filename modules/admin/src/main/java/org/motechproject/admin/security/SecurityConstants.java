package org.motechproject.admin.security;

/**
 * Contains constants used for securing parts of the admin module.
 */
public final class SecurityConstants {

    public static final String MANAGE_MESSAGES = "hasAuthority('manageMessages')";
    public static final String MANAGE_BUNDLES = "hasAuthority('manageBundles')";
    public static final String MANAGE_LOGS = "hasAuthority('manageLogs')";
    public static final String MANAGE_ACTIVEMQ = "hasAuthority('manageActivemq')";
    public static final String MANAGE_SETTINGS = "hasAuthority('manageSettings')";

    private SecurityConstants() {
    }
}
