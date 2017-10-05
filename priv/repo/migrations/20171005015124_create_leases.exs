defmodule Lease.Repo.Migrations.CreateLeases do
  use Ecto.Migration

  def change do
    create table(:leases, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :nickname, :string
      add :start_date, :naive_datetime
      add :end_date, :naive_datetime
      add :miles_allotment, :integer
      add :car_id, references(:cars, on_delete: :nothing, type: :uuid)

      timestamps()
    end

    create index(:leases, [:car_id])
  end
end
