package org.motechproject.email.json;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import org.motechproject.email.contract.Mail;

import java.io.IOException;

import static org.apache.commons.lang3.StringUtils.isBlank;
import static org.motechproject.email.constants.SendEmailConstants.FROM_ADDRESS;
import static org.motechproject.email.constants.SendEmailConstants.MESSAGE;
import static org.motechproject.email.constants.SendEmailConstants.SUBJECT;
import static org.motechproject.email.constants.SendEmailConstants.TO_ADDRESS;

public class MailDeserializer extends JsonDeserializer<Mail> {
    private JsonNode jsonNode;

    @Override
    public Mail deserialize(JsonParser jsonParser, DeserializationContext ctxt) throws IOException {
        jsonNode = jsonParser.readValueAsTree();

        return new Mail(
                getValue(FROM_ADDRESS, true), getValue(TO_ADDRESS, true),
                getValue(SUBJECT, false), getValue(MESSAGE, false)
        );
    }

    private String getValue(String key, boolean required) throws JsonMappingException {
        String value = null;

        if (jsonNode.has(key)) {
            value = jsonNode.get(key).textValue();
        }

        if (required && isBlank(value)) {
            throw new JsonMappingException(String.format("Property %s is required", key));
        }

        return value;
    }
}
