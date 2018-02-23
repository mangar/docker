FROM ruby:2.3

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
  python3 \
  npm \
  python-pip \
  unzip


# GO
WORKDIR /tmp

RUN wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
RUN tar -xf go1.8.3.linux-amd64.tar.gz
RUN mv go /usr/local

ENV GOROOT=/usr/local/go
ENV GOPATH=/root/go
ENV PATH=$GOPATH/bin:$GOROOT/bin:$PATH


# S3Upload
WORKDIR /tmp

RUN curl -sSL https://github.com/mangar/go-commands/archive/master.zip -o go-commands-master.zip
RUN unzip go-commands-master.zip; 

WORKDIR /tmp/go-commands-master/src/s3upload
RUN make
RUN make install



# NodeJS
RUN npm install -g npm
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs


# Middleman
RUN gem install bundler
RUN gem install middleman -v 3.4.1
RUN gem install middleman-autoprefixer -v 2.7
RUN gem install tzinfo-data
# ', platforms: [:mswin, :mingw, :jruby]
RUN gem install wdm -v 0.1
# , platforms: [:mswin, :mingw]
RUN gem install middleman-livereload -v3.4.5
RUN gem install rack-contrib -v 1.1.0
RUN gem install middleman-deploy -v 1.0




# APP
RUN mkdir -p /app
ADD ./ /app
WORKDIR /app


EXPOSE 4567

ENV NODE_ENV=development

# ENV STARTUP_CMD="server/server.js"
# RUN npm install
# CMD ["node", "${STARTUP_CMD}"]
