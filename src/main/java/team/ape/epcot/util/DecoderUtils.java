package team.ape.epcot.util;

import org.apache.commons.codec.binary.Base64;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

public class DecoderUtils {
    private DecoderUtils() {
    }

    public static String base64(String s) throws UnsupportedEncodingException {
        return new String(Base64.decodeBase64(URLDecoder.decode(s, StandardCharsets.UTF_8.name())), StandardCharsets.UTF_8);
    }
}
