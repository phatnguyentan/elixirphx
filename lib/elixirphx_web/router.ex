defmodule ElixirphxWeb.Router do
  use ElixirphxWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElixirphxWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/hello", HelloController, :index
    get "/hello/:messenger", HelloController, :show
    resources "/users", UserController
    resources "/posts", PostController, only: [:index, :show]
    resources "/comments", CommentController, except: [:delete]
  end

  # forward "/jobs", BackgroundJob.Plug
  # scope "/" do
  #   pipe_through [:authenticate_user, :ensure_admin]
  #   forward "/jobs", BackgroundJob.Plug
  # end
  forward "/jobs", BackgroundJob.Plug, name: "Hello Phoenix"

  # Other scopes may use custom stacks.
  # scope "/api", ElixirphxWeb do
  #   pipe_through :api
  # end
end
