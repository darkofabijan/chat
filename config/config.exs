# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, Chat.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "BIQVauDlRbCRFbE/tKAS2EOwTCO7uc8sqdDt6VIV+8lPfYZghDXHRyNdVsS0F5dIBj+SajDilSkMaPY9eZmtcw==",
  catch_errors: true,
  debug_errors: false,
  error_controller: Chat.PageController

# Session configuration
config :phoenix, Chat.Router,
  session: [store: :cookie,
            key: "_chat_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
