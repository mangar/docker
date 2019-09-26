# Slack Cli

This is a Docker Image for Slack Cli with the project: <https://github.com/rockymadden/slack-cli> backed into the image.

--- 

## Versions

- 1.0.0


## Creating 

__Creating the Image:__

```
docker build -t mangar/slack-cli:1.0.0 .
```


## Using

__Generate your Legacy Token__

<https://api.slack.com/custom-integrations/legacy-tokens>



__Run the ``./slack`` command__


```
export SLACK_CLI_TOKEN="SLACK_TOKEN_HERE"

docker run --env SLACK_CLI_TOKEN=$SLACK_CLI_TOKEN mangar/slack-cli:1.0.0 ./slack chat send "Hello world!" "#channel"
```

---




