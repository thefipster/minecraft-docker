docker build -t minecraft/vanilla:21w06a .
docker tag minecraft/vanilla:21w06a 192.168.1.30:5000/minecraft/vanilla:21w06a
docker push 192.168.1.30:5000/minecraft/vanilla:21w06a