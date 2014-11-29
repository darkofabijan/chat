defmodule Chat.Room do
  use Ecto.Model
  import Ecto.Query, only: [from: 2]

  schema "rooms" do
    field :name, :string
    has_many :messages, Chat.Message
  end

  def all do
    query = from r in Chat.Room, select: r

    Chat.Repo.all(query)
  end

end
