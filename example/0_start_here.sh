#!/usr/bin/env bash

# To get started execute this file with:
#
# ./0_start_here.sh
#
#

install_to=../share

../bin/vruby install --to $install_to

echo "Latest ruby installed to $install_to"
echo "Next run:"
echo
echo "    ../bin/vruby vruby --from $install_to"
echo "    source vruby/bin/activate"
