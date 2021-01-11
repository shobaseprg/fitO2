FROM ruby:2.5.1

RUN apt-get update -qq && \
  apt-get install -y build-essential \
  nodejs\
  mysql-server\
  mysql-client

# RUN mkdir /fitO2
WORKDIR /fitO2

# ホストのGemfileとGemfile.lockをコンテナにコピー
# ADD Gemfile /fitO2/Gemfile
# ADD Gemfile.lock /fitO2/Gemfile.lock

COPY  Gemfile /fitO2/Gemfile
COPY Gemfile.lock /fitO2/Gemfile.lock

## bundle installの実行
RUN gem install bundler
RUN bundle install

# ホストのアプリケーションディレクトリ内をすべてコンテナにコピー
# ADD . /fitO2

# puma.sockを配置するディレクトリを作成
RUN mkdir -p tmp/sockets
