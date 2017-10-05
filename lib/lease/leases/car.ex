defmodule Lease.Leases.Car do
  use Ecto.Schema
  import Ecto.Changeset
  alias Lease.Leases.Car

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "cars" do
    field :extra, :map
    field :make, :string
    field :model, :string
    field :year, :string

    timestamps()
  end

  @doc false
  def changeset(%Car{} = car, attrs) do
    car
    |> cast(attrs, [:year, :make, :model, :extra])
    |> validate_required([:year, :make, :model, :extra])
  end
end
