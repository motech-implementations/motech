package org.motechproject.security.authentication;

import org.apache.commons.lang.StringUtils;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.servlet.http.HttpServletRequest;

public class MotechUsernamePasswordAuthenticationFilter extends UsernamePasswordAuthenticationFilter {

    @Override
    protected String obtainUsername(HttpServletRequest request) {
        if(StringUtils.isEmpty(super.obtainUsername(request))) {
            return "motech";
        }
        return super.obtainUsername(request);
    }

    @Override
    protected String obtainPassword(HttpServletRequest request) {
        if(StringUtils.isEmpty(super.obtainPassword(request))) {
            return "motech";
        }
        return super.obtainPassword(request);
    }
}
