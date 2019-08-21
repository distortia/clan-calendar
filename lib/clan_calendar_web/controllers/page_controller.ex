defmodule ClanCalendarWeb.PageController do
  use ClanCalendarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
