defmodule Lease.Leases.OdometerReading do
  use Ecto.Schema
  import Ecto.Changeset
  alias Lease.Leases.OdometerReading

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "odometer_readings" do
    field :mileage, :integer
    field :lease_id, :id

    timestamps()
  end

  @doc false
  def changeset(%OdometerReading{} = odometer_reading, attrs) do
    odometer_reading
    |> cast(attrs, [:mileage])
    |> validate_required([:mileage])
  end
end
