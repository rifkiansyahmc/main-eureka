FROM openjdk:8
COPY https://github.com/rifkiansyahmc/main-eureka.git /usr/src/main
WORKDIR /usr/src/main
EXPOSE 8101
VOLUME /tmp
CMD gradlew build