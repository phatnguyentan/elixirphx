# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixirphx,
  ecto_repos: [Elixirphx.Repo]

# Configures the endpoint
config :elixirphx, ElixirphxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IypwFW8hRQv+yb2+0FdcmC6Lp2H2lw5sXp3vtk01/TdFipn2kJh/G7uyzma8/PPQ",
  render_errors: [view: ElixirphxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Elixirphx.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
