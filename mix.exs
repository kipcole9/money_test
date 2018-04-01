defmodule MoneyTest.Mixfile do
  use Mix.Project

  def project do
    [app: :money_test,
     version: "0.0.1",
     elixir: "~> 1.4",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: Mix.compilers ++ [:cldr],
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases(),
     deps: deps()
   ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {MoneyTest, []},
     applications: [:postgrex, :ecto, :ex_money]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:ecto, path: "../ecto", override: true}, #"~> 2.1"},
     {:postgrex, git: "https://github.com/elixir-ecto/postgrex.git", optional: true},
     {:db_connection, git: "https://github.com/elixir-ecto/db_connection.git", ref: "4947966", override: true},
     # {:ex_money, "~> 1.0"},
     {:ex_money, path: "../money"},
     # {:ex_cldr, path: "../cldr", override: true},
     {:jason, "~> 1.0"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
     "ecto.reset": ["ecto.drop", "ecto.setup"],
     "test": ["ecto.create --quiet", "ecto.migrate", "test"]]
  end
end
