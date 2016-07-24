# (My) Docker Repo

## Summary

Here are my specialized docker repositories. 
The target is to help me when firing new projects.


- - - 

## Machines


### Rails-PG


### 4.2.6


__Creating the Image:__
```
docker build -t mangar/rails-pg:4.2.6 .
```


__Creating a Rails project:__
```
docker run -v `pwd`:/app mangar/rails-pg:4.2.6 bash -c "rails new ./ -d postgresql -f"
```


__Installing a new Rails version:__
```
docker run -v `pwd`:/app mangar/rails-pg:4.2.6 bash -c "gem install rails -v 5.0.0"
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


__Installing a new Rails version:__
```
docker run -v `pwd`:/app mangar/rails-pg:5.0.0 bash -c "gem install rails -v 5.0.0"
```



- - - 



__Creating a Container:__
```
docker run --name my-rails mangar/rails-pg:4.2.6
```

```
docker run -v `pwd`:/app mangar/rails-pg:4.2.6 bash -c "rails _5.0.0_ new ./ -d postgresql -f"
```