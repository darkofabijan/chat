defmodule Chat.RoomChannel do
  use Phoenix.Channel

  def join(socket, "lobby", message) do
    IO.puts "JOIN #{socket.channel}:#{socket.topic}"

    reply socket, "join", %{status: "connected"}
    broadcast socket, "user:entered", %{username: message["username"]}

    {:ok, socket}
  end

  def join(socket, _private_topic, _message) do
    {:error, socket, :unauthorized}
  end

  def event(socket, "new:msg", data) do
    broadcast socket, "new:msg", data

    {room_id, _} = Integer.parse(data["room_id"])
    msg = %Chat.Message{room_id: room_id, username: data["username"], body: data["message"]}
    Chat.Repo.insert(msg)

    socket
  end

end
