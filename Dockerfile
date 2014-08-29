FROM debian:stable

MAINTAINER Jan Sorensen <jas@praqma.net>

RUN apt-get update
RUN apt-get install -y ruby1.9.1-dev make curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs
RUN gem install jekyll http json rdiscount --no-ri --no-rdoc
RUN mkdir /data

WORKDIR /data

EXPOSE 4000

ENTRYPOINT ["jekyll", "serve", "--watch"]
