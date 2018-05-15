defmodule HedwigKeybase.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :hedwig_keybase,
      name: "Hedwig Keybase",
      description: "A Keybase adapter for Hedwig",
      version: @version,
      elixir: "~> 1.6",
      elixirc_paths: elixirc_paths(Mix.env),
      package: package(),
      start_permanent: Mix.env() == :prod,
      build_embedded: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [
        :logger,
        :hackney,
        :hedwig,
        :jason
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:hackney, "~> 1.9"},
      {:hedwig, "~> 1.0"},
      {:jason, "~> 1.0"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Jeff Jewiss"],
     licenses: ["MIT"],
     links: %{
       "GitHub" => "https://github.com/jeffjewiss/hedwig_keybase"
     }]
  end

end
