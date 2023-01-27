defmodule TravelBlogWeb.PageController do
  use TravelBlogWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
