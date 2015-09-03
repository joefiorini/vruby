deactivate() {

  if [ -n "${_OLD_VRUBY_PATH}" ]; then
    echo "RESETTING PATH"
    export PATH="$_OLD_VRUBY_PATH"
    unset _OLD_VRUBY_PATH
  fi

  if [ -n "${_OLD_VRUBY_RUBY_ROOT}" ]; then
    echo "RESETTING RUBY_ROOT"
    export RUBY_ROOT="$_OLD_VRUBY_RUBY_ROOT"
    unset _OLD_VRUBY_RUBY_ROOT
  else
    unset RUBY_ROOT
  fi

  if [ -n "${_OLD_VRUBY_GEM_HOME}" ]; then
    echo "RESETTING GEM_HOME"
    export GEM_HOME="$_OLD_VRUBY_GEM_HOME"
    unset _OLD_VRUBY_GEM_HOME
  else
    unset GEM_HOME
  fi

  if [ -n "${_OLD_VRUBY_GEM_PATH}" ]; then
    echo "RESETTING GEM_PATH"
    export GEM_PATH="$_OLD_VRUBY_GEM_PATH"
    unset _OLD_VRUBY_GEM_PATH
  else
    unset GEM_PATH
  fi

  unset VRUBY

  unset -f deactivate
}

RUBY_VERSION=__VERSION__
RUBY_ENGINE=ruby

if [ -n "${RUBY_ROOT}" ]; then
  _OLD_VRUBY_RUBY_ROOT="$RUBY_ROOT"
  export _OLD_VRUBY_RUBY_ROOT
fi

RUBY_ROOT=__HOST_DIR__/__TARGET_DIR__

export RUBY_ROOT=__HOST_DIR__/__TARGET_DIR__

if [ -n "${GEM_HOME}" ]; then
  _OLD_VRUBY_GEM_HOME="$GEM_HOME"
  export _OLD_VRUBY_GEM_HOME
fi

export GEM_HOME="__HOST_DIR__/.gem/$RUBY_ENGINE/$RUBY_VERSION"

if [ -n "${GEM_PATH}" ]; then
  _OLD_VRUBY_GEM_PATH="$GEM_PATH"
  export _OLD_VRUBY_GEM_PATH
fi


export GEM_HOME="__HOST_DIR__/.gem/$RUBY_ENGINE/$RUBY_VERSION"
export GEM_PATH=$GEM_HOME

ruby_api_version=$(ruby -e "puts RbConfig::CONFIG['ruby_version']")

export _OLD_VRUBY_PATH="$PATH"
export PATH=$GEM_HOME/bin:__FROM__/__VERSION__/lib/ruby/gems/$ruby_api_version/bin:$RUBY_ROOT/bin:$PATH

export VRUBY="__HOST_DIR__/__TARGET_DIR__"
