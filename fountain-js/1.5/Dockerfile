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
  npm \
  nginx


RUN npm install -g npm

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs


# npm packages
RUN npm install -g yo
RUN npm install -g gulp
RUN npm install -g bower
RUN npm install -g jspm
RUN npm install -g generator-fountain-webapp


# yo / bower configuration
RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN mkdir -p /root/.config/configstore
RUN chown root:root /root/.config/ -R
RUN chmod g+rwx /root /root/.config /root/.config/configstore /root/.config/configstore/insight-yo.json
RUN touch /root/.config/configstore/insight-yo.json

RUN mkdir -p /app 
ADD ./ /app

WORKDIR /app


RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx


EXPOSE 80

CMD service nginx start