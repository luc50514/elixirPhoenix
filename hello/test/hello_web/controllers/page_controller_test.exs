defmodule HelloWeb.PageControllerTest do
  use HelloWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome Rich!"
  end

  test "GET /hello", %{conn: conn} do
    conn = get(conn, "/hello")
    assert html_response(conn, 200) =~ "Hello World, from Phoenix!"
  end
end
