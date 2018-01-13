# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cooper,
  ecto_repos: [Cooper.Repo]

# Configures the endpoint
config :cooper, CooperWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "am2iV0Mlfg6+KJs5vPKv5EJa0q9DL9HkfdFPbocl1wO0dpHq16OJH3MmAGm2/sYF",
  render_errors: [view: CooperWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Cooper.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
