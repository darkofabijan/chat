# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, Chat.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_chat_key",
  session_secret: "9L=L5Q+2RGY%IB8@*73L+P%D8+!Z72*(&)XT4@B5X19SD_T!H$$U145JFX11M@K(W_U$OW&*",
  catch_errors: true,
  debug_errors: false,
  error_controller: Chat.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
