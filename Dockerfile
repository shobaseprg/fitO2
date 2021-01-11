FROM ruby:2.5.1

RUN apt-get update -qq && \
  apt-get install -y build-essential \
  nodejs\
  mysql-server\
  mysql-client

WORKDIR /fitO2

COPY  Gemfile /fitO2/Gemfile
COPY Gemfile.lock /fitO2/Gemfile.lock

RUN gem install bundler
RUN bundle install

RUN mkdir -p tmp/sockets
