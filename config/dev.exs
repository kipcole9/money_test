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

config :ex_money,
  auto_start_exchange_rate_service: false,
  exchange_rates_retrieve_every: 300_000,
  api_module: Money.ExchangeRates.OpenExchangeRates,
  open_exchange_rates_app_id: "f3bdf46d4a164a98be19a48d7c012a31",
  callback_module: MoneyTest.ExchangeRates.Callback,
  log_failure: :warn,
  log_info: :info,
  log_success: :info

config :ex_cldr,
  json_library: Jason,
  locales: ["de", "it"]
