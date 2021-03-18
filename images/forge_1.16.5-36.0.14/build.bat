docker build -t minecraft/forge:1.16.5 .
docker tag minecraft/forge:1.16.5 192.168.1.30:5000/minecraft/forge:1.16.5
docker push 192.168.1.30:5000/minecraft/forge:1.16.5