FROM openjdk:8
COPY . /usr/src/main
WORKDIR /usr/src/main
EXPOSE 8101
VOLUME /tmp
CMD gradlew build