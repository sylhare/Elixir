defmodule Postgrex.MixProject do
  use Mix.Project

  def project() do
    [
      app: :hexper,
      version: "0.2.1",
      elixir: "~> 1.6",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Hexper",
      source_url: "https://github.com/Sylhare/Elixir",
      test_coverage: [tool: ExCoveralls],
    ]
  end

  def application() do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps() do
    [
        {:ex_doc, "~> 0.14", only: :dev}, 
        {:mix_test_watch, "~> 0.6", only: :dev, runtime: false},
        {:excoveralls, "~> 0.5.7", only: :dev},
    ]
  end

  defp description() do
    "Experience with Elixir and Hex."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "hexper",
      # These are the default files included in the package
      files: ["lib", "config", "test", "mix.exs", "README*"],
        maintainers: ["Sylhare"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/Sylhare/Elixir"}
    ]
  end
end