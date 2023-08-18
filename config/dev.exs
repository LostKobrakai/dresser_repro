import Config

# Configure your database
config :dresser_repro, DresserRepro.Repo,
  database: Path.expand("../dresser_repro_dev.db", Path.dirname(__ENV__.file)),
  pool_size: 5,
  stacktrace: true,
  show_sensitive_data_on_connection_error: true

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"
