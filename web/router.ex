defmodule Chat.Router do
  use Phoenix.Router

  #get "/", Chat.PageController, :index, as: :pages
  get "/", Chat.RoomController, :index, as: :root
  resources "/rooms", Chat.RoomController

end
