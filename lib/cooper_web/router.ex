defmodule CooperWeb.Router do
  use CooperWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CooperWeb do
    pipe_through :api

    get "/", IndexController, :index
  end
end
