defmodule TodoRealAppWeb.PageController do
  use TodoRealAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
