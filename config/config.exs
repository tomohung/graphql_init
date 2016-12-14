# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graphql_init,
  ecto_repos: [GraphqlInit.Repo]

# Configures the endpoint
config :graphql_init, GraphqlInit.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IlaAiDISVSuv9Oxpyj4fAE7bbjH5hwBk8FIq0ME+Jx3DtAWO4XJLELz9zcwCFAzY",
  render_errors: [view: GraphqlInit.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GraphqlInit.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
