defmodule Chat.Mixfile do
  use Mix.Project

  def project do
    [app: :chat,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { Chat, [] },
      applications: [:phoenix, :cowboy, :logger, :ecto, :postgrex]
    ]
  end

  defp deps do
    [
      {:phoenix, github: "phoenixframework/phoenix"},
      {:cowboy, "~> 1.0"},
      {:postgrex, ">= 0.0.0"},
      {:ecto, ">= 0.0.0"}
    ]
  end
end
