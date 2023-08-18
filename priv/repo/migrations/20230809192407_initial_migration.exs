defmodule DresserRepro.Repo.Migrations.InitialMigration do
  use Ecto.Migration

  def change do
    create table("images") do
      add :name, :string, null: false

      timestamps()
    end

    create table("pieces") do
      add :name, :string, null: true

      timestamps()
    end

    create table("piece_images") do
      add :piece_id, references("pieces"), null: false
      add :image_id, references("images"), null: false

      timestamps()
    end

    create unique_index("piece_images", [:image_id])
  end
end
