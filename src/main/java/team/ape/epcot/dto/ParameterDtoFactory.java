package team.ape.epcot.dto;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

public class ParameterDtoFactory {
    public static <T> T createByHttpRequest(Class<T> dtoClass, HttpServletRequest request) {
        T dto;
        try {
            dto = dtoClass.newInstance();
        } catch (InstantiationException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
        request.getParameterMap().forEach((k, v) -> Arrays.stream(dtoClass.getDeclaredFields())
                .filter(f -> f.getName().equals(k))
                .forEach(f -> {
                    f.setAccessible(true);
                    try {
                        f.set(dto, v[0]);
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    }
                }));
        return dto;
    }
}
