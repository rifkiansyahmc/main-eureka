FROM gradle:jdk8 as builder

COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build

FROM openjdk:8-jre-slim
COPY --from=builder home/gradle/src/main-eureka /usr/src/main
WORKDIR /usr/src/main
EXPOSE 8101
VOLUME /tmp