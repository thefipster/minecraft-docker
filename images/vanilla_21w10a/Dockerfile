FROM openjdk:8u212-jre-alpine

WORKDIR /data
EXPOSE 25565
EXPOSE 25575

RUN apk -U --no-cache upgrade

ARG MINECRAFT_SERVER_URL=https://launcher.mojang.com/v1/objects/5998d2c7c15fea04b2541efdcbec4c8cfe5df2a6/server.jar

RUN wget -O server.jar $MINECRAFT_SERVER_URL

ENTRYPOINT [ "java", "-Xms10G", "-Xmx10G", "-jar", "server.jar" ]
