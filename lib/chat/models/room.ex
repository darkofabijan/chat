defmodule Chat.Room do
  use Ecto.Model

  schema "rooms" do
    field :name,       :string
    field :updated_at, :datetime
    field :created_at, :datetime
  end
end
