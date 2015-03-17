# vruby

It's like virtualenv, but for ruby.

## Really!? Another ruby version manager? But why?

Because even after using rvm, rbenv and chruby, I'm still not happy with how they work. Don't get me wrong, if _all you do is Ruby_ any one of these solutions is great. However, if you're like me and switch between many languages, having to maintain a version manager for a language you don't use much isn't worth it. vruby is built with simplicity in mind; this simplicity is heavily inspired by python's virtualenv. Use vruby if:

- You don't want to customize your config files for a language you don't use often
- You don't like patching `cd` but also don't want to worry about generating wrapper scripts when you update gems
- You've found yourself pining for something like `virtualenv` but for ruby
- Are sick of waiting for rubies to compile when someone has already done it on every platform anyway

## Alpha Note

This project is currently an _extreme_ alpha. The README at the moment is more of a wishlist than a working step-by-step guide. This does work on my minimal ArchLinux setup, and I've followed a very similar workflow quite a bit on OS X (so I know it works). However, I am no longer a full time Ruby developer, therefore I don't have the bandwidth to build the fully robust solution I'd like. If others are interested in collaborating on this, please get in touch with me and we can chat.

## Installation

The easiest way to install vruby is to use GNU stow (which is currently required for use anyway). Install it with your system's package manager (or homebrew on OSX). Once you have it, download the latest tarball of this repo from github and extract it to `/opt/vruby`. Then use stow to install it to `/usr/local` by running `stow -d /opt -t /usr/local vruby` (TODO: Make this actually isolatable).

Once it's setup, you can install the latest ruby with:

```
vruby install
```

or a specific version with:

```
vruby install $VERSION
```

By default this will install Ruby versions to `/opt/vruby/share/$VERSION`. Note: vruby uses only relocatable, binary distributions of Ruby (currently from Traveling Ruby). This means you will __never__ have to wait for a Ruby to compile again.

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

- [ ] Create map of platforms to Traveling Ruby download URLs
- [ ] Make it possible to install globally in `/usr/local`
- [ ] Look into changing to Go or some other cross-platform compiled language (may make Windows support easier)
- [ ] Vendor GNU stow for easier installation
- [ ] Packages for major platforms (using FPM to create binary distributions)
