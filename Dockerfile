FROM openjdk:8
ADD build/libs/main-service-docker-0.1.jar main-service-docker-0.1.jar
EXPOSE 8101
VOLUME /tmp
ENTRYPOINT ["java","-jar","main-service-docker-0.1.jar"]