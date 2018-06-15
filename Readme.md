![](https://github.com/Sylhare/Elixir/blob/master/resources/elixir.png?raw=true)

[![Hex pm](http://img.shields.io/hexpm/v/hexper.svg?style=flat)](https://hex.pm/packages/hexper)
[![Build Status](https://travis-ci.org/Sylhare/Elixir.svg?branch=master)](https://travis-ci.org/Sylhare/Elixir)
[![codecov](https://codecov.io/gh/Sylhare/Elixir/branch/master/graph/badge.svg)](https://codecov.io/gh/Sylhare/Elixir)

Elixir is a functional, concurrent, general-purpose programming language that runs on the Erlang virtual machine (BEAM).

Elixir also provides a productive tooling (`Mix` build tool, interactive shell)and an extensible design (scalability, fault-tolerance).

Instead of thinking of object, you think of little easy to test process that you spawn and kill when needed.

## Getting started

Go to [elixir-lang.org](https://elixir-lang.org/install.html) and install elixir following the instruction, on MacOS with brew:
```
brew install elixir
```

Elixir has an interactive prompt called `iex` that you can try on the commad line. To quit the `iex` use `[command] + [c]` then `[a]`.

To run a script try with:
```bash
elixir hello.exs
```

To compile your module you should use `elixirc` such as
```bash
elixirc hello.exs
```

## Using Mix

`Mix` is a development tool for Elixir that help kick start an Elixir project:

```bash
mix new demo
```

Before running a project you might want to update all dependency using:

```bash
mix deps.get
```

And a project will be generated. To test your mix project try using:

```bash
mix test
```

However is you want to use your project functions in the `iex`, go in your root folder and run:

```bash
# The -S is for source
iex -S mix
```

### Mix project organisation

It is adviced to follow the Mix structure in order to organise your files, ie:
 
  - The package script should be in `lib`
  - The test files of the scripts in `test`
  - Configuration settings in `config`

For the other folder, usually they are populated dynamically:

  - `deps` is for installed dependencies
  - `_build` is the compiled sources of your project
  - `doc` is for documentation that can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
  
```bash
mix docs
```

### Mix project integration

The package can be installed
by adding the package name to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:demo, "~> 0.1.0"}
  ]
end
```

Package can be either download from repository or directly fron [Hex](hex.pm)

### Publishing a Mix project

Mix projects are hosted on [Hex](https://hex.pm/docs/publish). To get started, you will need to install `hex` using:

```bash
mix local.hex
```

Then you will need an account:

```bash
mix hex.user register
```

Then follow the procedure to add the correct metadata to your `mix.exs` so that you can finally publish it:

```bash
mix hex.publish
```

## Tips

There are no multiple comments line. A comments starts like in python with `#`

```elixir
# Will print Hello world
IO.puts "Hello world"
```

## Sources

- [Introduction to Elixir](https://elixir-lang.org/getting-started/introduction.html)
- [Elixir libraries](https://github.com/h4cc/awesome-elixir)
- [Phoenix - Elixir Rest framework](http://phoenixframework.org/)
- [Hex tasks](https://hex.pm/docs/tasks)
- [Elixir command line app](http://asquera.de/blog/2015-04-10/writing-a-commandline-app-in-elixir/)
- [Generate documentation with Ex_doc](https://brainlid.org/elixir/2016/09/01/phoenix-project-documentation.html)