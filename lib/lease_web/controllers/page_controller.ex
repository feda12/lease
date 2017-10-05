defmodule LeaseWeb.PageController do
  use LeaseWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
