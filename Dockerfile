# FROM openjdk:8-jdk-alpine
FROM openjdk:16-alpine3.13

# Not found
# FROM openjdk:11-jdk-alpine

ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar

# TODO: project dependencies
# ARG JAR_LIB_FILE=build/libs

WORKDIR /usr/local/app

COPY ${JAR_FILE} /app.jar

# copy project dependencies
# copy -rf ${JAR_LIB_FILE} /usr/local/app/lib
# ADD ${JAR_LIB_FILE} lib

ENTRYPOINT [ "java", "-jar", "/app.jar" ]

