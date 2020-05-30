FROM ruby:2.5.8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev sqlite3 nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . /myapp