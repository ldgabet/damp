#!/bin/bash
set -e

# pour pouvoir lancé le script depuis n'importe où
myDir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$myDir"

if [ -f .env ];then
    projectName=$(grep -Po "^COMPOSE_PROJECT_NAME=\K.*" "./.env" || true)
else
    echo "Le fichie .env est manquant"
    exit 1
fi

docker-compose down --volumes
docker rmi "$projectName"_apache_img "$projectName"_php_img "$projectName"_mysql_img
