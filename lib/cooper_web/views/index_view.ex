defmodule CooperWeb.IndexView do
  use CooperWeb, :view

  def render("index.json", _) do
    "Welcome to the Cooper API!"
  end
end
