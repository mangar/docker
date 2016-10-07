# Jekyll

This is a Docker Image for [Jekyll](https://jekyllrb.com/)

---

## Versions

- 1.0 ([Dockerfile](https://github.com/mangar/docker))


## Machines


### 1.


__Creating the Image:__
```
docker build -t mangar/jekyll:1.0 .
```

__Creating a new Jekyll Blog__
```
docker run -v `pwd`:/app mangar/jekyll:1.0 bash -c "jekyll new blog"
```


__Starting the WebServer (jekyll serve):__
```
cd blog
docker run -p 4000:4000 -v `pwd`:/app mangar/jekyll:1.0 bash -c "bundle install; bundle exec jekyll serve"
```



Fire on your browser: <http://localhost:4000>
