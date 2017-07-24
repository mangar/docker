# Webapp Front

This is a Docker Image for Web development basic.

--- 

## Versions

- 1.0 ([Dockerfile](https://github.com/mangar/docker))


## Machines



### 1.0


__Creating the Image:__
```
docker build -t mangar/webapp-front:1.0 .
```

__Starting the WebServer (Nginx):__
```
docker run -p 8081:80 -v `pwd`:/app --name mangar-webapp-front-10  mangar/webapp-front:1.0
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



