FROM mangar/rails-pg:5.0.2

MAINTAINER Marcio Mangar "marcio.mangar@gmail.com"

RUN apt-get update && apt-get install -y ghostscript

RUN gem update --system


RUN gem install awesome_print -v 1.7.0
RUN gem install coderay -v 1.1.1
RUN gem install faker -v 1.7.3
RUN gem install better_errors -v 2.1.1


RUN gem install json_web_token -v 0.3.4
RUN gem install paperclip -v 5.1.0
RUN gem install aws-sdk -v 2.9.12
RUN gem install hexapdf -v 0.4.0
RUN gem install rmagick -v 2.16.0
RUN gem install rest_client -v 1.8.3


EXPOSE 3000
