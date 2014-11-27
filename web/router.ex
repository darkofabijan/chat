defmodule Chat.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/" do
    pipe_through :browser # Use the default browser stack

    get "/", Chat.RoomController, :index
    resources "/rooms", Chat.RoomController
  end

end
