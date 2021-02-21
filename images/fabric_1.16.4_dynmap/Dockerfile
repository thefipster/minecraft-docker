FROM openjdk:8u212-jre-alpine

WORKDIR /data
EXPOSE 25565
EXPOSE 8123

RUN apk -U --no-cache upgrade

RUN apk add --no-cache -U \
  ttf-dejavu

ARG FABRIC_VERSION=0.6.1.51
ARG MINECRAFT_SERVER_URL=https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar

RUN wget -O fabric-installer.jar https://maven.fabricmc.net/net/fabricmc/fabric-installer/$FABRIC_VERSION/fabric-installer-$FABRIC_VERSION.jar \
  && wget -O server.jar $MINECRAFT_SERVER_URL \
  && java -jar fabric-installer.jar server \
  && rm fabric-installer.jar

ENTRYPOINT [ "java", "-Xms8G", "-Xmx8G", "-jar", "fabric-server-launch.jar" ]