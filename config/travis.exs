use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_test, ElixirTest.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :elixir_test, ElixirTest.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "elixir_test_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
