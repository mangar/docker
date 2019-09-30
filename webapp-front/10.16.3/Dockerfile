FROM ruby:2.6

MAINTAINER Marcio Mangar "marcio.mangar@gmail.com"

# aliases
RUN echo 'export TERM=xterm' >> /root/.bashrc
RUN echo 'alias ".."="cd .."' >> /root/.bashrc
RUN echo 'alias l="ls -lash"' >> /root/.bashrc
RUN echo 'alias cl="clear"' >> /root/.bashrc
RUN echo 'alias ll="cl; l"' >> /root/.bashrc

# Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list


RUN apt-get update && apt-get install -y -q \
  build-essential \
  wget \
  vim \
  python3 \
  npm \
  python-pip \
  unzip \
  yarn


# # GO
# WORKDIR /tmp

# RUN wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
# RUN tar -xf go1.8.3.linux-amd64.tar.gz
# RUN mv go /usr/local

# ENV GOROOT=/usr/local/go
# ENV GOPATH=/root/go
# ENV PATH=$GOPATH/bin:$GOROOT/bin:$PATH


# # S3Upload
# WORKDIR /tmp

# RUN curl -sSL https://github.com/mangar/go-commands/archive/develop.zip -o go-commands-develop.zip
# RUN unzip go-commands-develop.zip; 

# WORKDIR /tmp/go-commands-develop/src/s3upload
# RUN make
# RUN make install



# NodeJS
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs



# APP
RUN mkdir -p /app
ADD ./ /app
WORKDIR /app



EXPOSE 3000
EXPOSE 8080

ENV NODE_ENV=development

# ENV STARTUP_CMD="server/server.js"
# RUN npm install
# CMD ["node", "${STARTUP_CMD}"]
