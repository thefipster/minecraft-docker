install:
		docker network create --driver bridge proxy
		docker network create --driver bridge monitoring
		docker-compose -f docker-compose-admin.yml -p admin up -d
		docker-compose -f docker-compose-infra.yml -p infra up -d

update:
		docker-compose -f docker-compose-infra.yml -p infra down	
		docker-compose -f docker-compose-admin.yml -p admin down
		docker-compose -f docker-compose-admin.yml -p admin up -d
		docker-compose -f docker-compose-infra.yml -p infra up -d

setenv: