FROM php:7.2-fpm

RUN apt-get update && apt-get install -y procps && apt-get install -y git \
&& apt-get install -y postgresql-client && apt-get install -y libpq-dev && \
docker-php-ext-install pdo_pgsql

WORKDIR /usr/src/www/