install:
		docker network create --driver bridge proxy
		docker network create --driver bridge monitoring
		docker-compose up -d

update:
		docker-compose down	
		docker-compose up -d

setenv: