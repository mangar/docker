# Rails-PG

Rails with Postgres

---


## Helpers

This directory contains some helpers used on Rails projects.



---

## Machines




### 5.0.2


__Creating the Image:__
```
docker build -t mangar/rails-pg:5.0.2 .
```


__Creating a Rails project:__
```
docker run -v `pwd`:/app mangar/rails-pg:5.0.2 bash -c "rails new ./ -d postgresql -f"
```









### 5.0.0


__Creating the Image:__
```
docker build -t mangar/rails-pg:5.0.0 .
```


__Creating a Rails project:__
```
docker run -v `pwd`:/app mangar/rails-pg:5.0.0 bash -c "rails new ./ -d postgresql -f"
```





### 4.2.6


__Creating the Image:__
```
docker build -t mangar/rails-pg:4.2.6 .
```


__Creating a Rails project:__
```
docker run -v `pwd`:/app mangar/rails-pg:4.2.6 bash -c "rails new ./ -d postgresql -f"
```




---

# Docker

## Creating locally

You may switch the version tag with your preferred one.

### Pull the image
```
docker pull mangar/rails-pg:4.2.6
```

### Creating a Rails project
```
docker run -v `pwd`:/app mangar/rails-pg:4.2.6 bash -c "rails new ./ -d postgresql -f"
```


## database.yml

Replace the generated `database.yml` for this

The environment variables: `DATABASE_HOST`, `DATABASE_USERNAME` and `DATABASE_PASSWORD`are already defined into the image.


```
default: &default
  adapter: postgresql
  encoding: unicode
  pool: 5
  host: <%= ENV['DATABASE_HOST'] %>
  username: <%= ENV['DATABASE_USERNAME'] %>
  password: <%= ENV['DATABASE_PASSWORD'] %>    

development:
  <<: *default
  database: app_development

test:
  <<: *default
  database: app_test

production:
  <<: *default
  database: app_production

```

## Docker Compose

Bellow the docker compose with Postgres image working together with the Rails.
```
services:
  image: mangar/rails-pg:4.2.6
  command: bash -c "/bin/bash docker-start.sh"
  volumes:
    - .:/app
  ports:
    - "3000:3000"
  links:
    - postgres

postgres:
  image: postgres:9.4
  ports:
    - "5432:5432"
```

### docker-start.sh

The script bellow keep your databse updated and Rails running
```
#!/bin/bash

rm ./tmp/docker.pid
echo "[start] $(date)" >> ./tmp/docker.pid

# Clean up
rm -rf ./tmp/cache ./tmp/pids ./tmp/sessions ./tmp/sockets

# Setup
bundle install

sleep 5
rake db:create db:migrate db:seed

# Running
echo "[finish] $(date)" >> ./tmp/docker.pid
rails server -p 3000 -b '0.0.0.0'
```
