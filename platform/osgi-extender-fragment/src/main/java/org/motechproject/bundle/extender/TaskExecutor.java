package org.motechproject.bundle.extender;

import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.util.ObjectUtils;

public class TaskExecutor extends ThreadPoolTaskExecutor {
    public TaskExecutor(){
        super();
        ThreadGroup threadGroup =
                new ThreadGroup("YAYYYYYYYYYYYYYYYY eclipse-gemini-blueprint-extender-[" + ObjectUtils.getIdentityHexString(this) + "]-threads");
        threadGroup.setDaemon(false);
        ThreadPoolTaskExecutor taskExecutor = new ThreadPoolTaskExecutor();
        setCorePoolSize(10);
        setMaxPoolSize(30);
        setThreadGroup(threadGroup);
        setThreadNamePrefix("EclipseGeminiBlueprintExtenderThread-");
        initialize();


    }
}
