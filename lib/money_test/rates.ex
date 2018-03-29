defmodule Rates do
  use Ecto.Schema

  schema "rates" do
    field :currency, :string
    field :rate, :decimal
  end
end
