
set -o erexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean