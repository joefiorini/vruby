# Architecture

## Prototype

Like most developers, I've never built a version manager before. I have an idea of what it would take, but clear enough for an easy path forward. Therefore I'm building this in the fastest, least-resistant way possible, with a shell script. Any of the user-facing code will be rewritten once we've had a number of people try this project and confirm that it's working.

### Why?

Well, like I said, I want to better understand what it will take to build a version manager like this before committing myself to a language. I'm pretty sure the actual CLI tool for this will remain fairly lightweight, so there shouldn't be much risk in rewriting it in a compiled language later. Also, my time is valuable to me (as yours should be to you). I don't want to invest time in setting up an awesomely shiny cross-platform build toolchain until I know people are going to adopt this. Furthermore, there are some new tools out there that can make testing a project like this insanely easy. As we go, I want to automate tests that can run in Docker containers against different platforms.

## The Future

So that said, I see this project eventually migrating to a compiled, cross-platform system language like Go or Rust. I like Go for its simplicity in constraints; I like Rust for its focus on functional concepts. I have no idea which one is better for this project, but I'm open to suggestions.

I hope to continue to flesh out this document further, but for now this will have to do.
