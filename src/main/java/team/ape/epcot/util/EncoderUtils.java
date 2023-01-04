package team.ape.epcot.util;

import org.apache.commons.codec.binary.Base64;

import java.nio.charset.StandardCharsets;

public class EncoderUtils {
    private EncoderUtils() {
    }

    public static String base64(String s) {
        return Base64.encodeBase64URLSafeString(s.getBytes(StandardCharsets.UTF_8));
    }
}
