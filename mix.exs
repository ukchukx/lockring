defmodule Lockring.MixProject do
  use Mix.Project

  def project do
    [
      app: :lockring,
      version: "0.1.3",
      elixir: "~> 1.9",
      elixirc_options: [warnings_as_errors: true],
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      test_coverage: [tool: ExCoveralls],
      dialyzer: [plt_add_deps: :apps_direct, ignore_warnings: ".dialyzer_ignore.exs"]
    ]
  end

  def cli do
    [
      preferred_envs: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        "coveralls.json": :test
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Lockring.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false, optional: true},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false, optional: true},
      {:ex_doc, ">= 0.40.1", only: :dev, runtime: false, optional: true},
      {:excoveralls, "~> 0.18", only: :test, optional: true}
    ]
  end

  defp package do
    [
      description: "A mutex library for BEAM languages.",
      licenses: ["MIT"],
      maintainers: ["Uk Chukundah"],
      links: %{
        "Github" => "https://github.com/ukchukx/lockring"
      },
      files: ~w(config lib mix.exs .formatter.exs .dialyzer_ignore.exs README.md)
    ]
  end
end
