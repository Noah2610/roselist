#!/bin/bash
rm -f tmp/pids/server.pid
bundle exec rake db:create db:migrate
bundle exec rails assets:precompile
bundle exec rails server -b '0.0.0.0' -p 3000 -e $RAILS_ENV
