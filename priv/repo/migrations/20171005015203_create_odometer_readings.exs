defmodule Lease.Repo.Migrations.CreateOdometerReadings do
  use Ecto.Migration

  def change do
    create table(:odometer_readings, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :mileage, :integer
      add :lease_id, references(:leases, on_delete: :nothing, type: :uuid)

      timestamps()
    end

  end
end
