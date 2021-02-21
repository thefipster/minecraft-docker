FROM openjdk:8u212-jre-alpine

WORKDIR /data
EXPOSE 25565

RUN apk -U --no-cache upgrade

ARG MINECRAFT_SERVER_URL=https://launcher.mojang.com/v1/objects/6290ba4b475fca4a74de990c7fd8eccffd9654dd/server.jar

RUN wget -O server.jar $MINECRAFT_SERVER_URL

ENTRYPOINT [ "java", "-Xms8G", "-Xmx8G", "-jar", "server.jar" ]
