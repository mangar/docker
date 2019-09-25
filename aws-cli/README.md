# AWS Cli

This is a Docker Image for AWS CLI.

--- 

## Versions

- 1.16.96


## Creating 

__Creating the Image:__

```
docker build -t mangar/aws-cli:1.16.96 .
```


## Using

```
docker run -v `pwd`:/app -i mangar/aws-cli:1.16.96 aws --version


docker run mangar/aws-cli:1.16.96 aws --version
```


---



