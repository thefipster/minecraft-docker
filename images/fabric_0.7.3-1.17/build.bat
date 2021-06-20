docker build -t minecraft/fabric:1.16.4 .
docker tag minecraft/fabric:1.16.4 192.168.1.30:5000/minecraft/fabric:1.16.4
docker push 192.168.1.30:5000/minecraft/fabric:1.16.4