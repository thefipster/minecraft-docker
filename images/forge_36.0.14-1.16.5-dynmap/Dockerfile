FROM openjdk:8u212-jre-alpine

WORKDIR /data
EXPOSE 25565
EXPOSE 25575
EXPOSE 8123

RUN apk -U --no-cache upgrade

RUN apk add --no-cache -U \
  ttf-dejavu

ARG FORGE_VERSION=36.0.14
ARG MINECRAFT_VERSION=1.16.5

RUN wget -O forge-installer.jar https://files.minecraftforge.net/maven/net/minecraftforge/forge/$MINECRAFT_VERSION-$FORGE_VERSION/forge-$MINECRAFT_VERSION-$FORGE_VERSION-installer.jar \
    && java -jar forge-installer.jar --installServer \
    && rm forge-installer.jar \
    && mv forge-$MINECRAFT_VERSION-$FORGE_VERSION.jar forge-server.jar

ENTRYPOINT [ "java", "-Xms8G", "-Xmx8G", "-jar", "forge-server.jar" ]