install:
	mkdir -p /minecraft/admin/portainer
	docker network create --driver bridge --ipv6 --subnet 2a02:908:743:74e1:f0::/80 proxy
	docker network create --driver bridge --ipv6 --subnet 2a02:908:743:74e1:affe::/80 minecraft
	docker network create --driver bridge monitoring
	docker-compose up -d

update:
	docker-compose down
	docker-compose up -d

uninstall:
	docker-compose down
	docker network rm proxy
	docker network rm minecraft
	docker network rm monitoring

setenv:
