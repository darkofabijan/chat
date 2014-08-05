defmodule Chat.Controllers.Rooms do
  use Phoenix.Controller
  alias Chat.Repo
  alias Chat.Room

  def index(conn, _params) do
    rooms = Room.all

    render conn, "index", rooms: rooms
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, %{"room_name" => room_name}) do
    now = Ecto.DateTime.from_erl(:calendar.universal_time)
    room = %Room{name: room_name, updated_at: now, created_at: now}
    Repo.insert(room)

    render conn, "create", room_name: room_name
  end

end
