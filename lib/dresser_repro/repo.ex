defmodule DresserRepro.Repo do
  use Ecto.Repo,
    otp_app: :dresser_repro,
    adapter: Ecto.Adapters.SQLite3
end
