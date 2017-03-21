FROM mangar/rails-pg:5.0.2

MAINTAINER Marcio Mangar "marcio.mangar@gmail.com"

RUN apt-get update && apt-get install -y ghostscript


RUN gem install awesome_print -v 1.7.0
RUN gem install coderay -v 1.1.1
RUN gem install faker -v 1.7.3
RUN gem install better_errors -v 2.1.1


EXPOSE 3000
