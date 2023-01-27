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

RUN gem install bundler
# RUN bundle update mimemagic therubyracer
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bash"]
# CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]