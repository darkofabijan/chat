use Mix.Config

config :chat, Chat.Endpoint,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "/EXQfn3dX0zfICcueJJN7QjvP7SCnPMNhc9818TzVeduZM3P0rj3QrOvs3hehC6p"

config :logger,
  level: :info

config :app, :postgres,
  url: System.get_env("DATABASE_URL")
