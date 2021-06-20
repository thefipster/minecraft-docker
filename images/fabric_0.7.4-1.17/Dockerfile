FROM openjdk:16-jdk-alpine3.13

WORKDIR /data
EXPOSE 25565

RUN apk -U --no-cache upgrade

RUN apk add --no-cache -U \
  ttf-dejavu

ARG FABRIC_VERSION=0.7.4
ARG MINECRAFT_SERVER_URL=https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar

RUN wget -O fabric-installer.jar https://maven.fabricmc.net/net/fabricmc/fabric-installer/$FABRIC_VERSION/fabric-installer-$FABRIC_VERSION.jar \
# && wget -O server.jar $MINECRAFT_SERVER_URL \
  && java -jar fabric-installer.jar server -downloadMinecraft \
  && rm fabric-installer.jar

ENTRYPOINT [ "java", "-Xms8G", "-Xmx8G", "-jar", "fabric-server-launch.jar" ]