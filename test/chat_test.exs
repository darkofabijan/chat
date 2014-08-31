defmodule ChatTest do
  use ExUnit.Case
  use PlugHelper

  test "Rooms index" do
    conn = simulate_request(Chat.Router, :get, "/rooms")

    assert conn.status == 200
    assert String.contains?(conn.resp_body, "Rooms") == true
  end
end
