defmodule Chat.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :chat
  get "/", Chat.Controllers.Rooms, :index, as: :root
  resources "rooms", Chat.Controllers.Rooms
end
