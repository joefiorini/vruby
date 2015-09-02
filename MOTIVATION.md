I originally posted this as a comment in #3, but I felt like it's important enough to put it into it's own document.

### The Use Case

I've been developing vruby with a primary use case in mind: developers who don't use Ruby as their primary language, but switch a lot. There are a lot of developers (myself included) these days who just write javascript but have to jump into Ruby projects occasionally. I feel these developers would be best served with a tool that requires:

##### (1) Does absolute minimal work required to host ruby versions

One of the biggest problems I've had with the existing version management options is troubleshooting installations, starting with determining if it's a problem of the version manager, the ruby installation or a gem. This would be much easier if the version managers did a little less. No gemsets, no magic commands for version switching, no overriding `cd` to auto switch. Using this workflow, if I run into a problem while working on a project I know it's either a problem in Ruby or a gem. I can kill all my gems with `rm -rf .gem` and start over. I can reset my environment by opening a new Terminal window.

##### (2) Very simple installation via platform package manager

That way installation/uninstallation is simple, predictable and easy. No messing around with piping potentially unsafe scripts from the web or wondering how to uninstall a library after it's installed.

##### (3) Cross platform support

Runs on Windows and *nix with a minimum of compromises/disorganized code for platform support

##### (4) Does not require any setup steps to begin using

If Ruby isn't my primary language, I don't want to be adding stuff to my dotfiles just because some project I work on requires Ruby.

##### (5) Isolates gem dependencies within the given project

To make it easy to start from scratch/troubleshoot when I run into problems

##### (6) Offers the ability to isolate the Ruby interpreter in the given project

Same as previous, plus the added makes it much more likely that the project will continue to run after years of sitting on a backup drive without having to setup an environment for it again

##### (7) Uses binary ruby distributions

This may be a bit ambitious at this point, but projects like Tokaido have made it possible to have a purely binary Ruby distribution, which takes installation of new versions down from 10-20 minutes (quite often more than that on slower machines) to literally seconds. A binary distribution also lowers the risk of platform issues, since someone has already worked out dependency issues in order to build the binaries.

### Thoughts on Implementation

My thinking has been that a compiled language would make it easier to achieve both (1) and (2) above. I know there is no silver bullet with regards to cross-platform support, but a compiled language would at least help make sure the binary is runnable on other platforms regardless of language support.

I'm certainly open to other thoughts on this. I'm open to any solutions as long as we meet the use cases outlined above. Whatever decision we make, I do _not_ want to stick with bash long term. I'm not very happy with how the existing shell script is going, and would like to clean it all up.

