defmodule Chat.Repo.Migrations.CreateRooms do
  use Ecto.Migration

  def up do
    "CREATE TABLE rooms (
       id serial PRIMARY KEY,
       name text,
       updated_at timestamp,
       created_at timestamp
     )"
  end

  def down do
    "DROP TABLE IF EXISTS rooms"
  end

end
