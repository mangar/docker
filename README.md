# (My) Docker Repo

## Summary

Here are my specialized docker repositories. 
The target is to help me when firing new projects.


- - - 

## Machines


### Rails-PG


__Creating the Image:__
```
docker build -t mangar/rails-pg:4.2.6 .
```

__Creating a Rails project:__
```
docker run -v `pwd`:/app mangar/rails-pg:4.2.6 bash -c "rails new ./ -d postgresql"


EXTRA

docker rm $(docker ps -a -q)
docker run mangar/rails-pg:4.2.6 bash -c "pwd; ls -lash"

```

__Installing a new Rails version:__
```

```






__Creating a Container:__
```
docker run --name my-rails mangar/rails-pg:4.2.6
```


