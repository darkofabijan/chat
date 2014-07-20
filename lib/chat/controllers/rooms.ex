defmodule Chat.Controllers.Rooms do
  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index"
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, %{"room_name" => room_name}) do
    render conn, "create", room_name: room_name
  end

end
