defmodule DresserRepro.Schema.Piece do
  use DresserRepro.Schema
  import Ecto.Changeset

  schema "pieces" do
    field :name, :string

    many_to_many :images, DresserRepro.Schema.Image,
      join_through: DresserRepro.Schema.PieceImage,
      on_replace: :delete,
      on_delete: :delete_all,
      preload_order: [asc: :inserted_at],
      unique: true

    timestamps()
  end

  def changeset(schema_or_changeset, attrs) do
    schema_or_changeset
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> cast_assoc(:images)
  end
end
