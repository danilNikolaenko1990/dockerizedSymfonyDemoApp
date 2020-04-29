#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo ${DIR}

if ! docker ps -q &> /dev/null
then
    echo "You must be in docker group or root"
    exit 1
fi

cd ${DIR}
docker-compose build && docker-compose run --rm php-cli ./bin/composer.phar install && \
docker-compose up
