docker build -t minecraft/vanilla:1.16.1 .
docker tag minecraft/vanilla:1.16.1 192.168.1.30:5000/minecraft/vanilla:1.16.1
docker push 192.168.1.30:5000/minecraft/vanilla:1.16.1