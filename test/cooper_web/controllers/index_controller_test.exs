defmodule CooperWeb.IndexControllerTest do
  use CooperWeb.ConnCase

  test "GET /api", %{conn: conn} do
    conn = get conn, "/api"
    assert json_response(conn, 200) =~ "Welcome to the Cooper API!"
  end
end
