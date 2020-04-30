I took Symfony demo application and put it into the Docker to show "dockerization" skills.
Also I replaced sqlite database with PostgreSQL.
Original Symfony Demo application is here: https://github.com/symfony/demo
     
Launch application:
* go to project folder ```cd dockerizedSymfonyDemoApp```
* run ```./build/dev/start.sh```
 

Application is available at localhost:8080

Postgres admin panel is available at
localhost:8081
 * System - PostgreSQL
 * server - db
 * username - admin
 * password - admin
 * database - postgres
