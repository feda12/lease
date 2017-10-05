defmodule Lease.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Lease.Accounts.User

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "users" do
    field :email, :string
    field :encrypted_password, :string
    field :first_name, :string
    field :last_name, :string
    field :password_salt, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :email, :encrypted_password, :password_salt])
    |> validate_required([:first_name, :last_name, :email, :encrypted_password, :password_salt])
  end
end
