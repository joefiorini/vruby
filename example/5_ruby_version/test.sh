#!/usr/bin/env bash

../../bin/vruby install
../../bin/vruby vruby

source vruby/bin/activate

echo $(ruby --version)
