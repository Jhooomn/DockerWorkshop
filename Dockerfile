FROM openjdk:8u212-jre-alpine

ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ARG new_name
COPY . .

WORKDIR /server

RUN sed -i 's/A Minecraft Server/${new_name}/' server.properties

EXPOSE 25565

CMD ["java", "-jar", "server.jar", "nogui"]