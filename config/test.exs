use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :local_landing_pages, LocalLandingPages.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :local_landing_pages, LocalLandingPages.Repo,
  adapter: Mongo.Ecto,
  url: "ecto://dev-db.momentfeed.com:25017/momentfeed",
  pool_size: 1
