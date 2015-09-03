function deactivate -d "Exit vruby and return to normal shell environment"

  # reset old environment variables
  if set -q _OLD_VRUBY_PATH
    set -gx PATH $_OLD_VRUBY_PATH
    set -e _OLD_VRUBY_PATH
  end

  if set -q _OLD_VRUBY_RUBY_ROOT
    set -gx RUBY_ROOT $_OLD_VRUBY_RUBY_ROOT
    set -e _OLD_VRUBY_RUBY_ROOT
  else
    set -e RUBY_ROOT
  end

  if set -q _OLD_VRUBY_GEM_HOME
    set -gx GEM_HOME $_OLD_VRUBY_GEM_HOME
    set -e _OLD_VRUBY_GEM_HOME
  else
    set -e GEM_HOME
  end

  if set -q _OLD_VRUBY_GEM_PATH
    set -gx GEM_PATH $_OLD_VRUBY_GEM_PATH
    set -e _OLD_VRUBY_GEM_PATH
  else
    set -e GEM_PATH
  end

  set -e VRUBY

  functions -e deactivate
end

if test -n $RUBY_ROOT
  set -x _OLD_VRUBY_RUBY_ROOT $RUBY_ROOT
end

if test -n $GEM_HOME
  set -x _OLD_VRUBY_GEM_HOME $GEM_HOME
end

if test -n $GEM_PATH
  set -x _OLD_VRUBY_GEM_PATH $GEM_PATH
end

set RUBY_VERSION __VERSION__
set RUBY_ENGINE ruby
set RUBY_ROOT "__HOST_DIR__/__TARGET_DIR__"

set -x GEM_HOME "__HOST_DIR__/.gem/$RUBY_ENGINE/$RUBY_VERSION"
set -x GEM_PATH "$GEM_HOME"

set ruby_cmd $RUBY_ROOT/bin/ruby
set ruby_api_version (eval $ruby_cmd -e "puts RbConfig::CONFIG['ruby_version']")

set -x _OLD_VRUBY_PATH $PATH
set -x PATH $GEM_HOME/bin "__FROM__/__VERSION__/lib/ruby/gems/$ruby_api_version" "$RUBY_ROOT/bin" $PATH

set -x VRUBY "__HOST_DIR__/__TARGET_DIR__"
