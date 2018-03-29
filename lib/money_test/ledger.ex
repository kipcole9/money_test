defmodule Ledger do
  # use Ecto.Schema
  use Includes

  @primary_key false
  schema "ledgers" do
    # include Thing
    field :amount, Money.Ecto.Composite.Type

    timestamps()
  end
end
