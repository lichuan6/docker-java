FROM gradle:jdk11 AS builder
WORKDIR /app/
COPY . .
RUN ./gradlew build -x test

FROM openjdk:11-jre-slim
WORKDIR /app/demoapp/
COPY --from=builder /app/build/libs/demo-0.0.1-SNAPSHOT.jar /app/demoapp/
EXPOSE 8080
ENTRYPOINT ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]
