defmodule Chat.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url Application.get_env(:app, :postgres)[:url]
  end

  def priv do
    app_dir(:chat, "priv/repo")
  end

end
