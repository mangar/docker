FROM python:alpine

RUN apk -uv add --no-cache groff jq less git curl bash

RUN mkdir -p /slack-cli
ADD ./ /slack-cli
WORKDIR /slack-cli

RUN curl -O https://raw.githubusercontent.com/rockymadden/slack-cli/master/src/slack
RUN chmod +x slack

CMD sh