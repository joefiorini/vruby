set -e

command_exists() {
  command -v $1 &> /dev/null
  return $?
}

test_require() {
  ruby -r$1 -e ""
  result=$?

  if [[ result -ne 0 ]]; then
    echo "Could not load $1 Please open an issue at https://github.com/joefiorini/vruby and paste in all the output  from this test."
    return $result
  fi
}

command_exists mogrify || echo "You need imagemagick installed for this test. Please install it using your platform's package manager."

bundle install

echo "Testing rmagick..."
test_require rmagick

echo "Testing faker..."
test_require faker

echo "All tests passed."
