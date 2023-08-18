defmodule DresserRepro.Schema.Image do
  use DresserRepro.Schema
  import Ecto.Changeset

  schema "images" do
    field :name, :string

    timestamps()
  end

  def changeset(schema_or_changeset, attrs) do
    schema_or_changeset
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
