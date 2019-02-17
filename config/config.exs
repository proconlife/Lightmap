# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lightmap,
  ecto_repos: [Lightmap.Repo]

# Configures the endpoint
config :lightmap, LightmapWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XB5dxP5t2qd7idsnjMmFpAYMd90BKUEiOJp+ZZxsh5pT2Z9uPl8b5Cn100isfos+",
  render_errors: [view: LightmapWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lightmap.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
