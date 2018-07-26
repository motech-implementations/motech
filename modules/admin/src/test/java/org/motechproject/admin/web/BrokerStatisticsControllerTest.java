package org.motechproject.admin.web;


import org.hamcrest.core.StringContains;
import org.joda.time.DateTime;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.motechproject.admin.domain.QueueMBean;
import org.motechproject.admin.domain.QueueMessage;
import org.motechproject.admin.domain.TopicMBean;
import org.motechproject.admin.jmx.MBeanService;
import org.motechproject.admin.web.controller.BrokerStatisticsController;
import org.motechproject.commons.api.Tenant;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.util.Arrays;

import static org.mockito.BDDMockito.given;
import static org.mockito.Matchers.anyString;
import static org.mockito.MockitoAnnotations.initMocks;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class BrokerStatisticsControllerTest {

    MockMvc mockMvc;

    @InjectMocks
    BrokerStatisticsController brokerStatisticsController = new BrokerStatisticsController();

    @Mock
    MBeanService mBeanService;

    @Mock
    Tenant tenant;

    @Before
    public void before() {
        initMocks(this);
        mockMvc = MockMvcBuilders.standaloneSetup(brokerStatisticsController).build();
        given(tenant.canHaveQueue(anyString())).willReturn(true);
    }

    @Test
    public void shouldReturnAllTopicInformation() throws Exception {
        given(mBeanService.getTopicStatistics(anyString())).willReturn(Arrays.asList(new TopicMBean("topic-1"), new TopicMBean("topic-2")));
        mockMvc.perform(MockMvcRequestBuilders
                .get("/topics"))
                .andExpect(status().isOk())
                .andExpect(content().string(new StringContains("\"destination\":\"topic-1\"")))
                .andExpect(content().string(new StringContains("\"destination\":\"topic-2\"")));
    }

    @Test
    public void shouldReturnAllQueueInformation() throws Exception {
        given(mBeanService.getQueueStatistics(anyString())).willReturn(Arrays.asList(new QueueMBean("queue-1"), new QueueMBean("queue-2")));
        mockMvc.perform(MockMvcRequestBuilders
                .get("/queues"))
                .andExpect(status().isOk())
                .andExpect(content().string(new StringContains("\"destination\":\"queue-1\"")))
                .andExpect(content().string(new StringContains("\"destination\":\"queue-2\"")));
    }

    @Test
    public void shouldReturnMessageInformationGivenQueueName() throws Exception {
        given(mBeanService.getQueueMessages("foo")).willReturn(Arrays.asList(new QueueMessage("123", false, new DateTime())));
        mockMvc.perform(MockMvcRequestBuilders
                .get("/queues/browse?queueName=foo"))
                .andExpect(status().isOk())
                .andExpect(content().string(new StringContains("\"messageId\":\"123")))
                .andExpect(content().string(new StringContains("\"redelivered\":false")));
    }

    @Test
    public void shouldReturnBadRequestCodeIfQueueNameNotProvided() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                .get("/queues/browse"))
                .andExpect(status().isBadRequest());
    }


    @Test
    public void shouldReturnEmptyArrayIfQueueDoesNotBelongToTenant() throws Exception {
        given(tenant.canHaveQueue(anyString())).willReturn(false);
        mockMvc.perform(MockMvcRequestBuilders
                .get("/queues/browse?queueName=bar"))
                .andExpect(status().isOk())
                .andExpect(content().string("[]"));
    }
}
