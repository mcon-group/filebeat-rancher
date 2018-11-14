#!/bin/bash



for i in ${p}; do
	x=$(basename ${i})
	echo "==================== ${x}"
	rancher -config ${1} rm ${x}
	sleep 5
	rancher -config ${1} up -d --confirm-upgrade --force-recreate --stack ${x} --file ${x}/docker-compose.yml --rancher-file ${x}/rancher-compose.yml 
done  