package org.motechproject.mds.testutil.records;


import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.ArrayUtils;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import java.io.IOException;

/**
 * Serializer for {@code Record} class.
 */
public class BlobSerializer extends JsonSerializer<Byte[]> {
    @Override
    public void serialize(Byte[] value, JsonGenerator jgen, SerializerProvider provider) throws IOException {
        jgen.writeBinary(Base64.encodeBase64(ArrayUtils.toPrimitive(value)));
    }
}
