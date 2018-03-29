defmodule MoneyTest.Repo.Migrations.CreateRates do
  use Ecto.Migration

  def change do
    create table(:rates) do
      add :currency, :string
      add :rate, :decimal

    end
  end
end
