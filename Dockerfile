FROM ruby:3.0-buster

ENV APP_PATH /app
RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH

COPY Gemfile ./
RUN bundle install
ADD . .

CMD ["ruby", "server.rb"]