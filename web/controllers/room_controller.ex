defmodule Chat.RoomController do
  use Phoenix.Controller
  alias Chat.Repo
  alias Chat.Room

  plug :action

  def index(conn, _params) do
    rooms = Room.all

    render conn, "index", rooms: rooms
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, %{"room_name" => room_name}) do
    room = %Room{name: room_name}
    Repo.insert(room)

    render conn, "create", room_name: room_name
  end

  def show(conn, %{"id" => id_string}) do
    {id, _} = Integer.parse(id_string)
    room = Repo.get(Room, id)

    render conn, "show", room_name: room.name
  end

end
