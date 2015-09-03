RUBY_VERSION=__VERSION__
RUBY_ENGINE=ruby
RUBY_ROOT=__HOST_DIR__/__TARGET_DIR__

export GEM_HOME="__HOST_DIR__/.gem/$RUBY_ENGINE/$RUBY_VERSION"
export GEM_PATH=$GEM_HOME

ruby_api_version=$(ruby -e "puts RbConfig::CONFIG['ruby_version']")

export PATH=$GEM_HOME/bin:__FROM__/__VERSION__/lib/ruby/gems/$ruby_api_version/bin:$RUBY_ROOT/bin:$PATH

