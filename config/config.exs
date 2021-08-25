# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rabu3_graphql_api,
  ecto_repos: [Rabu3GraphqlApi.Repo]

# Configures the endpoint
config :rabu3_graphql_api, Rabu3GraphqlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "x9jDiEg0Le1fAgrCuV3EX4t6fej+XZyTABet5iJDpEUcCCsB5xiEh9BIs9tV+x/T",
  render_errors: [view: Rabu3GraphqlApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Rabu3GraphqlApi.PubSub,
  live_view: [signing_salt: "A1Nhm5HX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
