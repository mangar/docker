FROM ruby:2.3

MAINTAINER marcio.mangar@gmail.com

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


RUN gem install bundler && bundle install --jobs 20 --retry 5
