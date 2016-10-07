use Mix.Config

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Configure your database
config :money_test, MoneyTest.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "kip",
  database: "money_dev",
  hostname: "localhost",
  pool_size: 10
