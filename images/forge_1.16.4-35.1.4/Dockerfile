FROM openjdk:8u212-jre-alpine

WORKDIR /data
EXPOSE 25565
EXPOSE 25575
EXPOSE 8123

RUN apk -U --no-cache upgrade

RUN apk add --no-cache -U \
  ttf-dejavu

ARG FORGE_VERSION=35.1.4
ARG MINECRAFT_VERSION=1.16.4

RUN wget -O forge-installer.jar https://files.minecraftforge.net/maven/net/minecraftforge/forge/$MINECRAFT_VERSION-$FORGE_VERSION/forge-$MINECRAFT_VERSION-$FORGE_VERSION-installer.jar \
    && java -jar forge-installer.jar --installServer \
    && rm forge-installer.jar \
    && mv forge-$MINECRAFT_VERSION-$FORGE_VERSION.jar server.jar

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
  "server.jar" \
]