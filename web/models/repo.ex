defmodule Chat.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://darko@localhost/chat_development"
  end

  def priv do
    app_dir(:chat, "priv/repo")
  end

end
