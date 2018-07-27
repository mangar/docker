FROM ruby:2.2

MAINTAINER Marcio Mangar "marcio.mangar@gmail.com"

# aliases
RUN echo 'export TERM=xterm' >> /root/.bashrc
RUN echo 'alias ".."="cd .."' >> /root/.bashrc
RUN echo 'alias l="ls -lash"' >> /root/.bashrc
RUN echo 'alias cl="clear"' >> /root/.bashrc
RUN echo 'alias ll="cl; l"' >> /root/.bashrc


RUN apt-get update && apt-get install -y -q \
  build-essential \
  wget \
  vim

RUN gem install bundler
RUN gem install jekyll -v 3.8.3

RUN mkdir -p /app
ADD ./ /app

WORKDIR /app

EXPOSE 4000

# CMD bundle exec jekyll serve
