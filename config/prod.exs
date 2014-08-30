use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, Chat.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_chat_key",
  session_secret: "9L=L5Q+2RGY%IB8@*73L+P%D8+!Z72*(&)XT4@B5X19SD_T!H$$U145JFX11M@K(W_U$OW&*"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

