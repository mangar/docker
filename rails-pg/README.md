# Rails-PG

Rails with Postgres

--- 


## Helpers

This directory contains some helpers used on Rails projects.


--- 

## Machines



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





