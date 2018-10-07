package org.motechproject.security.authentication;

import org.apache.commons.lang3.StringUtils;
import org.motechproject.security.constants.SecurityConfigConstants;
import org.springframework.security.access.AccessDecisionVoter;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.core.Authentication;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.GrantedAuthority;


import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/**
 * A custom AccessDecisionVoter for voting on whether
 * a specific user has access to a particular URL. For example,
 * a security rule can specify that the users motech and admin
 * have access to a particular URL. This loads the metadata source
 * with attributes for ACCESS_motech and ACCESS_admin. When a user
 * invokes that URL, an affirmative based voting system will check
 * whether or not the user is motech or admin. If not, they are denied
 * permission, otherwise they are granted access.
 */
public class MotechMethodAccessVoter implements AccessDecisionVoter<Object> {

    private static final Logger LOGGER = LoggerFactory.getLogger(MotechMethodAccessVoter.class);
    @Override
    public boolean supports(ConfigAttribute attribute) {

        if(attribute != null) {
            LOGGER.debug("attribute:" + attribute.toString());
        }
        if(attribute!= null && attribute.toString().contains("authorize") && attribute.toString().contains("hasRole")) {
            LOGGER.debug("MotechMethodAccessVoter returning true");
            return true;
        }
        LOGGER.debug("MotechMethodAccessVoter returning false");
        return false;
        //return StringUtils.startsWith(attribute.getAttribute(), SecurityConfigConstants.USER_ACCESS_PREFIX);
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return true;
    }

    /**
     * Checks if given user has access to given URL.
     * If authentication details are not instance of MotechUserProfile or
     * ConfigAttributes are empty then return ACCESS_ABSTAIN.
     * If attribute is supported but User is not allowed then return
     * ACCESS_DENIED, otherwise return ACCESS_GRANTED
     *
     * @param authentication to be used for check
     * @param attributes that contains information about access for users
     * @return ACCESS_ABSTAIN, ACCESS_DENIED or ACCESS_GRANTED
     */
    @Override
    public int vote(Authentication authentication, Object object, Collection<ConfigAttribute> attributes) {
//        LOGGER.debug("MotechMethodAccessVotee vote method : Start");
        int result = ACCESS_ABSTAIN;
//        LOGGER.debug(authentication.toString());
//        LOGGER.debug(authentication.getName());
//        LOGGER.debug(authentication.getAuthorities().toString());
        Set<String> authorities = new HashSet<>();
        if(authentication != null && authentication.getAuthorities() != null) {
            for(GrantedAuthority grantedAuthority : authentication.getAuthorities()) {
                authorities.add(grantedAuthority.getAuthority());
            }
        }
//        LOGGER.debug(authentication.getCredentials().toString());
        for (ConfigAttribute attribute : attributes) {
            if (this.supports(attribute)) {
                boolean granted= false;
                LOGGER.debug("MotechMethodAccessVotee vote method : supports attribute");
                for (String currAuth : authorities) {
                    if (attribute.toString().contains(currAuth)) {
                        result = ACCESS_GRANTED;
                        granted = true;
                        break;

                    }
                }
                if(!granted) {
                    result = ACCESS_DENIED;
                }
            }

//                result = ACCESS_DENIED;
//
//                if (StringUtils.equalsIgnoreCase(SecurityConfigConstants.USER_ACCESS_PREFIX + authentication.getName(),
//                        attribute.getAttribute())) {
//                    return ACCESS_GRANTED;
//                }
            }


        return result;
    }
}
