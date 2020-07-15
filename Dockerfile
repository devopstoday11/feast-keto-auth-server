FROM maven:3.6-jdk-11 as builder
COPY  . /build
WORKDIR /build

RUN mvn --batch-mode clean package

FROM openjdk:11-jre-slim as production
COPY --from=builder /build/target/*.jar /opt/app.jar
CMD ["java", "-Xms1024m", "-Xmx1024m", "-jar", "/opt/app.jar"]
