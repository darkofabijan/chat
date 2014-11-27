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
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "BIQVauDlRbCRFbE/tKAS2EOwTCO7uc8sqdDt6VIV+8lPfYZghDXHRyNdVsS0F5dIBj+SajDilSkMaPY9eZmtcw=="

config :logger,
  level: :info
