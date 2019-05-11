#!/bin/bash
set -e

# pour pouvoir lancé le script depuis n'importe où
myDir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$myDir"

if ! [[ -d ../logs/apache ]]; then
    mkdir -p ../logs/apache
fi

if ! [[ -d ../logs/mysql ]]; then
    mkdir -p ../logs/mysql
fi

if ! [[ -d ../logs/php ]]; then
    mkdir -p ../logs/php
fi

if ! [[ -d ../database ]]; then
    mkdir ../database
fi

if [[ -f .env ]];then
    projectName=$(grep -Po "^COMPOSE_PROJECT_NAME=\K.*" "./.env" || true)
else
    echo "Le fichie .env est manquant"
    exit 1
fi

docker-compose up -d --build

#docker exec "$projectName"_apache_con chown -R root:www-data /usr/local/apache2/logs
#docker exec "$projectName"_php_con chown -R root:www-data /usr/local/etc/logs
