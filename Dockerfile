# Dockerfile
FROM ruby:2.7.7-alpine

RUN apk add --update --no-cache \
    build-base \
    sqlite-dev \
    postgresql-dev \
    nodejs \
    tzdata \
    shared-mime-info \
    bash \
    curl \
    yarn \
    imagemagick \
    mc

ENV RAILS_ROOT /rails_app
RUN mkdir -p $RAILS_ROOT

WORKDIR $RAILS_ROOT
COPY Gemfile Gemfile.lock ./

RUN gem install bundler -v 2.4.22
# RUN bundle update mimemagic therubyracer
RUN bundle install

EXPOSE 3000

CMD bash
# CMD bundle exec rails s -p 3000 -b '0.0.0.0'

# docker ps
# bundle exec rails db:create
# bundle exec rails db:migrate
# bundle exec rails assets:precompile