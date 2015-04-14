#!/usr/bin/env bash

set -e

source vruby/bin/activate

command_exists() {
  command -v $1 &> /dev/null
  return $?
}

test_require() {
  ruby -r$1 -e ""
  result=$?

  return $result
}

test_require rails || gem install --no-user-install --no-document rails

rails new vruby_test

cd vruby_test

test_require "vruby_test/config/application"

if [[ $? -eq 0 ]]; then
  echo "Successfully loaded Rails app!"
fi

