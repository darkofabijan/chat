defmodule Chat.Repo.Migrations.CreateMessages do
  use Ecto.Migration

  def up do
    "CREATE TABLE IF NOT EXISTS messages(id serial primary key, room_id int references rooms(id), username text, body text)"
  end

  def down do
    "DROP TABLE messages"
  end
end
