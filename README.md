# vruby

It's like virtualenv, but for ruby.

## Really!? Another ruby version manager? But why?

Because even after using rvm, rbenv and chruby, I'm still not happy with how they work. Don't get me wrong, if _all you do is Ruby_ any one of these solutions is great. However, if you're like me and switch between many languages, having to maintain a version manager for a language you don't use much isn't worth it. vruby is built with simplicity in mind; this simplicity is heavily inspired by python's virtualenv. Use vruby if:

- You don't want to customize your config files for a language you don't use often
- You don't like patching `cd` but also don't want to worry about generating wrapper scripts when you update gems
- You've found yourself pining for something like `virtualenv` but for ruby
- Are sick of waiting for rubies to compile when someone has already done it on every platform anyway

For more detail read [MOTIVATION.md](https://github.com/joefiorini/vruby/blob/master/MOTIVATION.md)

## Call for Community

This project is currently alpha. I've been using vruby for managing Ruby on a couple Macs for more than 6 months and it is working great for me. Alas, I cannot call it anything but alpha until it's proven successful in the wild. If you decide to try vruby, please submit feedback by opening issue and telling me about your experience. Regardless of how it went, feedback is the only way to be confident in recommending it to the community.

Likewise, if you are interested in collaborating on this, please get in touch with me and we can chat.

## Installation

### Homebrew

vruby does not yet have an acceptable homebrew formula. There is a very simple Homebrew formula in this repo you can use to install for the time being. To install the latest HEAD via Homebrew simply install:

```
brew install https://raw.githubusercontent.com/joefiorini/vruby/master/formula/vruby.rb
```

## Install Ruby

### Using binary Ruby distributions

vruby has built-in support for installing binary Ruby distributions. These have the significant advantage that installation is simply decompressing the archive to a directory. However, these distributions require manual effort to maintain and are not always up-to-date. Check <http://rvm.io/binaries> to see if the version you need is available for your platform.

Install the latest binary distribution by running:

```
vruby install
```

This command will look to a `.ruby-version` file if one exists in the current working directory, or default to `$default_ruby_version`. You can override this behavior by specifying a version with:

```
vruby install $VERSION
```

By default this will install Ruby versions to `/opt/vruby/share/$VERSION`.

### Compiling a ruby with ruby-build

If you don't mind compiling your Ruby, you can use `ruby-build` (installed on OS X via Homebrew) to download and compile any Ruby version into the location necessary for vruby:

```
mkdir -p /opt/vruby/share
ruby-build 2.3.0 --prefix /opt/vruby/share/2.3.0
```

## Usage

Once you have a ruby installed, embed in your project under a folder called `vruby` like so:


```
vruby vruby
```

This will create a vruby folder in your project and create symlinks to the installed ruby version.

To activate this ruby just run:

```
source vruby/bin/activate
```

To deactivate, close your terminal session and open a new one.

## TODO

- [x] Create map of platforms to binary Ruby download URLs
- [x] Make it work on OS X
- [x] Make sure it works with a rails app
- [x] Make it possible to install globally in `/usr/local`
- [ ] Packages for major platforms (using FPM to create binary distributions)
- [ ] Automated testing in docker containers
