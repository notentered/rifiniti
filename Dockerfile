FROM ruby:2.6

MAINTAINER Zlatko Zahariev <zlatko.zahariev@eumoirous.com>

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

WORKDIR /app
RUN bundle install