# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :todo_real_app,
  ecto_repos: [TodoRealApp.Repo]

# Configures the endpoint
config :todo_real_app, TodoRealAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SvLI8PIQ4U0+rvbgzIHotZIkVL2FjXsCforkW2k8/Z/7d9TeC+PooNWMu6kTG8ak",
  render_errors: [view: TodoRealAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodoRealApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
