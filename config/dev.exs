use Mix.Config

config :phoenix, Chat.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "_chat_key",
  session_secret: "9L=L5Q+2RGY%IB8@*73L+P%D8+!Z72*(&)XT4@B5X19SD_T!H$$U145JFX11M@K(W_U$OW&*",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


