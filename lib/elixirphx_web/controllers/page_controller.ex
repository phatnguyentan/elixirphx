defmodule ElixirphxWeb.PageController do
  use ElixirphxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
