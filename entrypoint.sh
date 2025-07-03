#!/bin/bash
set -e

# データベースが起動するのを待つ
bundle exec rails db:prepare

exec bundle exec rails server -b 0.0.0.0
