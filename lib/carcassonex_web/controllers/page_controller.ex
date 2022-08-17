defmodule CarcassonexWeb.PageController do
  use CarcassonexWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
