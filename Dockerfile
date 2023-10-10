FROM ruby:3.0-buster

ENV APP_PATH /app
RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH

ADD . .

CMD ["ruby", "main.rb", "30"]