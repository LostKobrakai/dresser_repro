defmodule DresserRepro.ReproTest do
  use DresserRepro.DataCase
  alias DresserRepro.Schema

  describe "delete_piece/1" do
    test "piece can be deleted" do
      Logger.configure(level: :debug)

      piece =
        %Schema.Piece{}
        |> Schema.Piece.changeset(%{name: "Piece 1", images: [%{name: "Image 1"}]})
        |> Repo.insert!()
        |> Repo.preload(:images)
        |> IO.inspect()

      Repo.delete(piece)
    end
  end
end
