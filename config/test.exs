use Mix.Config

config :chat2, Chat.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
