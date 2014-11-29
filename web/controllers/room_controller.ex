defmodule Chat.RoomController do
  use Phoenix.Controller
  alias Chat.Repo
  alias Chat.Room

  plug :action

  def index(conn, _params) do
    rooms = Room.all

    render conn, "index.html", rooms: rooms
  end

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, %{"room_name" => room_name}) do
    room = %Room{name: room_name}
    Repo.insert(room)

    render conn, "create.html", room_name: room_name
  end

  def show(conn, %{"id" => id_string}) do
    {id, _} = Integer.parse(id_string)
    room = Repo.get(Room, id)
    messages = Repo.all(room.messages)

    conn
    |> assign(:room_name, room.name)
    |> assign(:messages, messages)
    |> render "show.html"
  end

end
