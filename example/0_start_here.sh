#!/usr/bin/env bash

# To get started execute this file with:
#
# ./0_start_here.sh
#
#

install_to=../share

# Make sure we're running from examples directory
current_dir=$(basename $(pwd))

if [[ "$current_dir" != "example" ]]; then
  # Assumes we're at least in the vruby directory
  cd example
fi

rm -rf ./vruby

../bin/vruby install --to $install_to

echo "Latest ruby installed to $install_to"
echo "Next run:"
echo
echo "    ../bin/vruby vruby --from $install_to"
echo "    source vruby/bin/activate"
