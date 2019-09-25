FROM ruby:2.6.0

MAINTAINER Marcio Mangar "marcio.mangar@gmail.com"

# aliases
RUN echo 'alias ".."="cd .."' >> /root/.bashrc
RUN echo 'alias l="ls -lash"' >> /root/.bashrc
RUN echo 'alias cl="clear"' >> /root/.bashrc
RUN echo 'alias ll="cl; l"' >> /root/.bashrc


RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  rsync \
  zip \
  unzip \
  libpq-dev


RUN mkdir -p /app
ADD ./ /app
WORKDIR /app


#
#
ENV DATABASE_HOST "mysql"
ENV DATABASE_USERNAME "root"
ENV DATABASE_PASSWORD ""


RUN gem install bundler && bundle install --jobs 20 --retry 5
RUN gem install rails -v 6.0.0

EXPOSE 3000
