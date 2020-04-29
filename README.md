
to start application you need to perform follow commands

* cd build/dev
* docker-compose up -d db
* docker-compose run --rm php ./bin/composer.phar install && docker-compose up