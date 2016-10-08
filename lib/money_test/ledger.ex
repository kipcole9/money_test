defmodule Ledger do
  use Ecto.Schema

  @primary_key false
  schema "ledgers" do
    field :amount, Money.Ecto.Type

    timestamps()
  end
end
