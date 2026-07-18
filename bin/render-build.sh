#!/usr/bin/env bash
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake db:migrate
SECRET_KEY_BASE_DUMMY=1 bundle exec rails assets:precompile