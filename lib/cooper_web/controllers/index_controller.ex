defmodule CooperWeb.IndexController do
  use CooperWeb, :controller

  def index(conn, _params) do
    render conn, "index.json"
  end
end
