defmodule Chat.Message do
  use Ecto.Model

  schema "messages" do
    field :username, :string
    field :body, :string
    belongs_to :room, Chat.Room
  end

end
