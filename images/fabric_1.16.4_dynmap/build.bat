docker build -t minecraft/fabric:1.16.4_dynmap .
docker tag minecraft/fabric:1.16.4_dynmap 192.168.1.30:5000/minecraft/fabric:1.16.4_dynmap
docker push 192.168.1.30:5000/minecraft/fabric:1.16.4_dynmap