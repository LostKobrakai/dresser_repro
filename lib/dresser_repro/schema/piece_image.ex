defmodule DresserRepro.Schema.PieceImage do
  use DresserRepro.Schema

  schema "piece_images" do
    belongs_to :image, DresserRepro.Schema.Image
    belongs_to :piece, DresserRepro.Schema.Piece

    timestamps()
  end
end
