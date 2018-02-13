defmodule BlogApiWeb.Router do
  use BlogApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BlogApiWeb do
    pipe_through :api

    get "/", HomeController, :index
    resources "/posts", PostController, except: [:edit, :new]
  end
  
end
