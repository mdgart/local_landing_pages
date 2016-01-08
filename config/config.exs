# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :local_landing_pages, LocalLandingPages.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "ovs2uMs34dDGS+q5v5cgo3YdCCJi6AwM5lvHWc8Nf/P6EUK1GJnjx93ZsdIMNS8r",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: LocalLandingPages.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: false,
  binary_id: true
