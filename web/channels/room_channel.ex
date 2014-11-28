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

  def event(socket, "new:msg", message) do
    broadcast socket, "new:msg", message

    socket
  end

end
