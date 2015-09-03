set RUBY_VERSION __VERSION__
set RUBY_ENGINE ruby
set RUBY_ROOT "__HOST_DIR__/__TARGET_DIR__"

set -x GEM_HOME "__HOST_DIR__/.gem/$RUBY_ENGINE/$RUBY_VERSION"
set -x GEM_PATH "$GEM_HOME"

set -x PATH $GEM_HOME/bin "__FROM__/__VERSION__/lib/ruby/gems/__VERSION__/bin" "$RUBY_ROOT/bin" $PATH
