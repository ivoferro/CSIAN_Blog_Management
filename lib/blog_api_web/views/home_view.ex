defmodule BlogApiWeb.HomeView do
  use BlogApiWeb, :view

  def render("index.json", _params) do
    %{message: "Welcome to computer science in a nutshell API!"}
  end
end
