# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :chat, Chat.Endpoint,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "/EXQfn3dX0zfICcueJJN7QjvP7SCnPMNhc9818TzVeduZM3P0rj3QrOvs3hehC6p",
  debug_errors: false

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
