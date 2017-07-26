
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

# NodeJS
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get install -y nodejs


# yo / bower configuration
RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN mkdir -p /root/.config/configstore
RUN chown root:root /root/.config/ -R

RUN chown -R root:root /root/.npm/ 

RUN touch /root/.config/configstore/insight-yo.json
RUN chmod g+rwx /root 
RUN chmod g+rwx /root/.config 
RUN chmod g+rwx /root/.config/configstore 
RUN chmod g+rwx /root/.config/configstore/insight-yo.json


RUN mkdir -p /app
ADD ./ /app

WORKDIR /app


RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx


EXPOSE 80

CMD service nginx start





# FROM ruby:2.2

# MAINTAINER Marcio Mangar "marcio.mangar@gmail.com"

# # aliases
# RUN echo 'export TERM=xterm' >> /root/.bashrc
# RUN echo 'alias ".."="cd .."' >> /root/.bashrc
# RUN echo 'alias l="ls -lash"' >> /root/.bashrc
# RUN echo 'alias cl="clear"' >> /root/.bashrc
# RUN echo 'alias ll="cl; l"' >> /root/.bashrc


# RUN apt-get update && apt-get install -y -q \
#   build-essential \
#   wget \
#   vim \
#   nginx


# # NVM
# # NodeJS
# RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
# ENV NODE_VERSION=v5
# RUN . $HOME/.nvm/nvm.sh && \
#   nvm install $NODE_VERSION && \
#   nvm alias default $NODE_VERSION && \
#   nvm use default && \
#   npm install yo generator-fountain-webapp -g



# RUN mkdir -p /app
# ADD ./ /app

# WORKDIR /app


# RUN rm /etc/nginx/nginx.conf
# COPY ./nginx.conf /etc/nginx


# EXPOSE 80

# CMD service nginx start


