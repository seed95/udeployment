SHELL := /bin/bash

redis:
	docker stack deploy --compose-file ./redis_ha/docker-compose.yaml --with-registry-auth redis-ha
rm_redis:
	docker stack rm redis-ha

gss_old:
	docker-compose -f ./old/gss_old/docker-compose.yaml up --build --remove-orphans
rm_gss_old:
	docker-compose -f ./old/gss_old/docker-compose.yaml down

gss:
	docker-compose -f ./go_streaming_server/docker-compose.yaml up --build --remove-orphans
rm_gss:
	docker-compose -f ./go_streaming_server/docker-compose.yaml down

gss_2:
	docker-compose -f ./go_streaming_server/docker-compose_2.yaml -p gss_2 up --build --remove-orphans
rm_gss_2:
	docker-compose -f ./go_streaming_server/docker-compose_2.yaml -p gss_2 down

disp2:
	docker-compose -f ./dispatcher/docker-compose_2.yaml -p disp2 up --build --remove-orphans

rm_redis_v: rm_redis
	remove-stack-volumes redis-ha
rm: rm_redis rm_gss
all: redis gss
