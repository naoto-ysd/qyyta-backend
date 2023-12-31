FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y nodejs npm yarn default-mysql-client
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
