defmodule SetLocale.Mixfile do
  use Mix.Project

  def project do
    [
      app: :set_locale,
      version: "0.1.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.post": :test, "coveralls.html": :test],
      test_coverage: [tool: ExCoveralls]

    ]
  end

  def application do
    [
      applications: [
        :gettext,
        :logger
      ]
    ]
  end

  defp deps do
    [
      {:phoenix, "~> 1.2.1"},
      {:gettext, "~> 0.11"},
      {:excoveralls, "~> 0.5.7", only: :test},
    ]
  end

  defp package do
    [
      maintainers: ["Gerard de Brieder"],
      licenses: ["WTFPL"],
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      links: %{
        "GitHub" => "https://github.com/smeevil/set_locale",
        "Docs"   => "http://smeevil.github.io/set_locale/"
      }
    ]
  end

end
