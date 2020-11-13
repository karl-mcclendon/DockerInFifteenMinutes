FROM alpine:latest
RUN apk add openjdk11

COPY webserver.jar .

ENTRYPOINT ["java", "-XX:MaxRAMPercentage=70.0", "-XX:+ExitOnOutOfMemoryError", "-jar", "webserver.jar"]
