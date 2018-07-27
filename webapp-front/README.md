# Webapp Front

This is a Docker Image for Web development basic.

--- 

## Versions

- 8.x ([Dockerfile](https://github.com/mangar/docker))
- 0.5 ([Dockerfile](https://github.com/mangar/docker))


## Machines


### 8.4.1 (8.x) - Node V8


__Creating the Image:__
```
docker build -t mangar/webapp-front:8.4.2 .
```

__Starting the WebServer (Nginx):__
```
docker run -p 3000:3000 -p 8080:8080 -v `pwd`:/app --name mangar-webapp-front-80  mangar/webapp-front:8.4.1
```



---








### 8.4 (8.x) - Node V8


__Creating the Image:__
```
docker build -t mangar/webapp-front:8.4 .
```

__Starting the WebServer (Nginx):__
```
docker run -p 3000:3000 -p 8080:8080 -v `pwd`:/app --name mangar-webapp-front-80  mangar/webapp-front:8.2
```



---




### 0.5 - Node v5


__Creating the Image:__
```
docker build -t mangar/webapp-front:0.5 .
```

__Starting the WebServer (Nginx):__
```
docker run -p 8081:80 -v `pwd`:/app --name mangar-webapp-front-05  mangar/webapp-front:0.5
```


__Starting the server:__

Login into the server by openning Kitematic and clicking on __Exec__ button.
When inside the machine type the bellow commands:



Install packages:
```
npm install
```



Start the server on development mode:
```
npm run dev
```











Fire on your browser: <http://localhost:8081>



