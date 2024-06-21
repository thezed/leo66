## README

psql -U postgres leo66_production < /leo66_production.sql

docker ps
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails assets:precompile
