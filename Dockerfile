FROM ismeade/java:openjdk8-jdk-alpine

MAINTAINER ismeade <ismeade99@sina.com>

RUN apk add --no-cache git && \
    git clone https://github.com/spring-io/initializr.git && \
    cd initializr && \
    ./mvnw clean install && \
    cd initializr-service && \
    ../mvnw spring-boot:run

EXPOSE 8080
