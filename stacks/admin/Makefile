install:
	mkdir -p /minecraft/admin/portainer
	docker network create --driver bridge proxy
	docker network create --driver bridge monitoring
	docker-compose up -d

update:
	docker-compose down
	docker-compose up -d

uninstall:
	docker-compose down
	docker network rm proxy
	docker network rm monitoring

setenv:
