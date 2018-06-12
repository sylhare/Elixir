# Elixir

Elixir is a functional, concurrent, general-purpose programming language that runs on the Erlang virtual machine (BEAM).

![](https://raw.githubusercontent.com/Sylhare/Elixir/master/resources/elixir.png)

Elixir also provides a productive tooling (`Mix` build tool, interactive shell)and an extensible design (scalability, fault-tolerance).

## Getting started

Go to [elixir-lang.org](https://elixir-lang.org/install.html) and install elixir following the instruction, on MacOS with brew:
```
brew install elixir
```

Elixir has an interactive prompt called `iex` that you can try on the commad line.

To run a script try with:
```bash
elixir hello.exs
```

To compile your module you should use `elixirc` such as
```bash
elixirc hello.exs
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