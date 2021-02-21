FROM openjdk:8u212-jre-alpine

WORKDIR /data
EXPOSE 25565

RUN apk -U --no-cache upgrade

ARG MINECRAFT_SERVER_URL=https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar

RUN wget -O server.jar $MINECRAFT_SERVER_URL

ENTRYPOINT [ "java", "-Xms8G", "-Xmx8G", "-jar", "server.jar" ]
