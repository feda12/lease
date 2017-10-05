defmodule Lease.Repo.Migrations.CreateCars do
  use Ecto.Migration

  def change do
    create table(:cars, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :year, :string
      add :make, :string
      add :model, :string
      add :extra, :map

      timestamps()
    end

  end
end
