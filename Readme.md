![](https://github.com/Sylhare/Elixir/blob/master/resources/elixir.png?raw=true)

[![Hex pm](http://img.shields.io/hexpm/v/hexper.svg?style=flat)](https://hex.pm/packages/hexper)

[![Build Status](https://travis-ci.org/Sylhare/Elixir.svg?branch=master)](https://travis-ci.org/Sylhare/Elixir)

Elixir is a functional, concurrent, general-purpose programming language that runs on the Erlang virtual machine (BEAM).

Elixir also provides a productive tooling (`Mix` build tool, interactive shell)and an extensible design (scalability, fault-tolerance).

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

And a project will be generated.

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

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/demo](https://hexdocs.pm/demo).

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

### Installing a hex package

First you want to know if that package exists, or if you have the correct name:
```bash
mix hex.search hexper
```

Then you might want to install it using:
```bash
mix hex.install hexper
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