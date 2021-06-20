FROM openjdk:8u212-jre-alpine

WORKDIR /data
EXPOSE 25565
EXPOSE 25575
EXPOSE 8123

RUN apk -U --no-cache upgrade

RUN apk add --no-cache -U \
  ttf-dejavu

ARG FABRIC_VERSION=0.7.2
ARG MINECRAFT_SERVER_URL=https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar

RUN wget -O fabric-installer.jar https://maven.fabricmc.net/net/fabricmc/fabric-installer/$FABRIC_VERSION/fabric-installer-$FABRIC_VERSION.jar \
  && wget -O server.jar $MINECRAFT_SERVER_URL \
  && java -jar fabric-installer.jar server \
  && rm fabric-installer.jar

ENTRYPOINT [ \
  "java", \
  "-Xms10G", \
  "-Xmx10G", \
  "-XX:+UseG1GC", \
  "-XX:+ParallelRefProcEnabled", \
  "-XX:MaxGCPauseMillis=200", \
  "-XX:+UnlockExperimentalVMOptions", \
  "-XX:+DisableExplicitGC", \
  "-XX:+AlwaysPreTouch", \
  "-XX:G1NewSizePercent=30", \
  "-XX:G1MaxNewSizePercent=40", \
  "-XX:G1HeapRegionSize=8M", \
  "-XX:G1ReservePercent=20", \
  "-XX:G1HeapWastePercent=5", \
  "-XX:G1MixedGCCountTarget=4", \
  "-XX:InitiatingHeapOccupancyPercent=15", \
  "-XX:G1MixedGCLiveThresholdPercent=90", \
  "-XX:G1RSetUpdatingPauseTimePercent=5", \
  "-XX:SurvivorRatio=32", \
  "-XX:+PerfDisableSharedMem", \
  "-XX:MaxTenuringThreshold=1", \
  "-Dusing.aikars.flags=https://mcflags.emc.gs", \
  "-Daikars.new.flags=true", \
  "-jar", \
  "fabric-server-launch.jar" \
]
