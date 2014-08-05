defmodule Chat.Room do
  use Ecto.Model
  import Ecto.Query, only: [from: 2]

  schema "rooms" do
    field :name,       :string
    field :updated_at, :datetime
    field :created_at, :datetime
  end

  def all do
    query = from r in Chat.Room, select: r

    Chat.Repo.all(query)
  end

end
