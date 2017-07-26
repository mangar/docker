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
  vim \
  npm


RUN npm install -g npm

# NodeJS
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs


RUN mkdir -p /app
ADD ./ /app

WORKDIR /app


# Express Port
EXPOSE 3000

# Webpack
EXPOSE 8080

ENV NODE_ENV=development


RUN npm install
CMD ["node", "server/server.js"]
