# redmine #

* https://hub.docker.com/_/redmine/


stack.yml

```
version: '3.1'

services:

  redmine:
    image: redmine
    restart: always
    ports:
      - 8080:3000
    environment:
      REDMINE_DB_MYSQL: db
      REDMINE_DB_PASSWORD: example

  db:
    image: mysql:5.7
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: example
      MYSQL_DATABASE: redmine
```

Run

```
docker-compose -f stack.yml up
```

Detach

```
docker-compose -f stack.yml up -d
```

Stop

```
docker-compose -f stack.yml down
```
