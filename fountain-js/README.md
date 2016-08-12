# FountainJS

This is a Docker Image for [FountainJS.io](http://fountainjs.io/)

--- 

## Versions

- 1.5 ([Dockerfile](https://github.com/mangar/docker))
- 1.0 ([Dockerfile](https://github.com/mangar/docker))


## Machines



### 1.5

__News__ 

- added JSPM


__Creating the Image:__
```
docker build -t mangar/fountainjs:1.5 .
```

__Starting the WebServer (Nginx):__
```
docker run -p 8081:80 -v `pwd`:/app --name mangar-fountainjs-15  mangar/fountainjs:1.5
```





__Creating a Fountain project:__

After starting the Nginx server, connect on it:
```
docker exec -u 0 -it mangar-fountainjs-15 bash
```

Then:
```
touch /root/.config/configstore/insight-yo.json; yo fountain-webapp
```



__Start the server:__

Install the tools:
```
npm install
bower install
jspm install
```

Start the server:
```
npm run serve
```


Fire on your browser: <http://localhost:8081>





- - - 





### 1.0


__Creating the Image:__
```
docker build -t mangar/fountainjs:1.0 .
```

__Starting the WebServer (Nginx):__
```
docker run -p 8081:80 -v `pwd`:/app --name mangar-fountainjs-10  mangar/fountainjs:1.0
```


