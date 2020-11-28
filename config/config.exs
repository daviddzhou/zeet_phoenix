# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :zeet_phoenix,
  ecto_repos: [ZeetPhoenix.Repo]

# Configures the endpoint
config :zeet_phoenix, ZeetPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jwRQNG1RsKLgi6URy+srfCMlC9qlvT1bIpce4GIviEuYVkZ1ujSAqZ+edLYj4ewR",
  render_errors: [view: ZeetPhoenixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ZeetPhoenix.PubSub,
  live_view: [signing_salt: "uRyqQaVA"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
