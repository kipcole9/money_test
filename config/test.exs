use Mix.Config

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :money_test, MoneyTest.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "kip",
  database: "money_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
