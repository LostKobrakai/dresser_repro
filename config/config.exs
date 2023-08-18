# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :dresser_repro,
  ecto_repos: [DresserRepro.Repo]

# Configure your database
config :dresser_repro, DresserRepro.Repo,
  database: Path.join(["_build", "#{config_env()}", "db.sqlite3"]),
  migration_primary_key: [column: :id, type: :binary_id],
  migration_foreign_key: [column: :id, type: :binary_id],
  migration_timestamps: [type: :utc_datetime_usec]

config :ecto_sqlite3,
  binary_id_type: :binary,
  uuid_type: :binary

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
