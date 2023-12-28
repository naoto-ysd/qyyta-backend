FROM ruby:3.0.3
RUN apt-get update -qq && apt-get install -y nodejs npm
RUN npm install -g yarn
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp