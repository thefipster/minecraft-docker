FROM openjdk:16-jdk-alpine3.13

WORKDIR /data
EXPOSE 25565

RUN apk -U --no-cache upgrade

RUN apk add --no-cache -U \
  ttf-dejavu

ARG FABRIC_VERSION=0.7.3

RUN wget -O fabric-installer.jar https://maven.fabricmc.net/net/fabricmc/fabric-installer/$FABRIC_VERSION/fabric-installer-$FABRIC_VERSION.jar \
  && java -jar fabric-installer.jar server -downloadMinecraft \
  && rm fabric-installer.jar

ENTRYPOINT [ "java", "-Xms8G", "-Xmx8G", "-jar", "fabric-server-launch.jar" ]