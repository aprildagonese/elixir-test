defmodule ElixirTestWeb.HelloController do
  use ElixirTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
