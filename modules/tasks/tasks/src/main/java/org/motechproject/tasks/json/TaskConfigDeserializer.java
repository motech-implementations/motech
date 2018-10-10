package org.motechproject.tasks.json;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.motechproject.tasks.domain.TaskConfig;
import org.motechproject.tasks.domain.TaskConfigStep;

import java.io.IOException;
import java.util.Iterator;

/**
 * {@code JsonDeserializer} for {@code TaskConfig} class.
 */
public class TaskConfigDeserializer extends JsonDeserializer<TaskConfig> {

    @Override
    public TaskConfig deserialize(JsonParser parser,
                                  DeserializationContext context) throws IOException {
        JsonNode jsonNode = parser.readValueAsTree();
        TaskConfig config = new TaskConfig();
        ObjectMapper mapper;

        ObjectCodec codec = parser.getCodec();

        if (codec instanceof ObjectMapper) {
            mapper = (ObjectMapper) codec;
        } else {
            mapper = new ObjectMapper();
        }

        if (jsonNode.has("steps")) {
            Iterator<JsonNode> steps = jsonNode.get("steps").elements();

            while (steps.hasNext()) {
                config.add(mapper.readValue(steps.next().toString(), TaskConfigStep.class));
            }
        }

        return config;
    }
}
