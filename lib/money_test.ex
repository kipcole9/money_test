defmodule MoneyTest do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      supervisor(MoneyTest.Repo, []),
      supervisor(Money.ExchangeRates.Supervisor, [[restart: true, start_retriever: false]])
    ]

    opts = [strategy: :one_for_one, name: MoneyTest.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
