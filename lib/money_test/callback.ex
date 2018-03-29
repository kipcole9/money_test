defmodule MoneyTest.ExchangeRates.Callback do
  @spec latest_rates_retrieved(%{}, %DateTime{}) :: :ok
  def latest_rates_retrieved(rates, _retrieved_at) do

    money = rates
    |> Enum.map(fn {k, v} -> %{currency: Atom.to_string(k), rate: v} end)

    MoneyTest.Repo.insert_all(Rates, money)
    :ok
  end
end