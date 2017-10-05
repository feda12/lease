defmodule Lease.Leases.Lease do
  use Ecto.Schema
  import Ecto.Changeset
  alias Lease.Leases.Lease

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "leases" do
    field :end_date, :naive_datetime
    field :miles_allotment, :integer
    field :nickname, :string
    field :start_date, :naive_datetime
    field :car_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Lease{} = lease, attrs) do
    lease
    |> cast(attrs, [:nickname, :start_date, :end_date, :miles_allotment])
    |> validate_required([:nickname, :start_date, :end_date, :miles_allotment])
  end
end
