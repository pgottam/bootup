#FROM openjdk:8-jdk-alpine
FROM openjdk:8u212-jdk-alpine3.9
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
