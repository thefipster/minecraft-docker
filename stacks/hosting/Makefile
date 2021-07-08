install:
	mkdir -p /minecraft/admin/prometheus
	mkdir -p /minecraft/admin/registry
	chown nobody /minecraft/admin/prometheus
	docker-compose up -d

update:
	docker-compose pull
	docker-compose down
	docker-compose up -d

uninstall:
	docker-compose down
