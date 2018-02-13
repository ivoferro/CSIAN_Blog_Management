defmodule BlogApiWeb.HomeController do
  use BlogApiWeb, :controller

  def index(conn, _params) do
    render conn, "index.json"
  end
end