install:
	mkdir -p /minecraft/hosts/smp/server
	mkdir -p /minecraft/hosts/smp/config
	mkdir -p /minecraft/hosts/smp/logs
	mkdir -p /minecraft/hosts/smp/mods
	mkdir -p /minecraft/hosts/smp/debug
	mkdir -p /minecraft/hosts/smp/prometheus
	mkdir -p /minecraft/hosts/smp/rcon
	mkdir -p /minecraft/worlds/smp
	mkdir -p /minecraft/maps/smp
	mkdir -p /minecraft/backups/smp
	cp ./config/minecraft/* /minecraft/hosts/smp/server/
	chown nobody /minecraft/hosts/smp/prometheus
	docker-compose up -d

update:
	docker-compose pull
	docker-compose down
	docker-compose up -d

uninstall:
	docker-compose down
