defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, params) do
    if(params == "hello") do
      render(conn,"hello.html")
    end

    render(conn, "index.html")
  end

end
