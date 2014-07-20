defmodule Chat.Views.Rooms do
  use Chat.Views

  def new_room_path do
    Chat.Router.new_room_path
  end

end
