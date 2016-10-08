defmodule MoneyTest.Repo.Migrations.Ledger do
  use Ecto.Migration

  def change do
    create table(:ledgers) do
      add :amount, :money_with_currency

      timestamps()
    end

  end
end
