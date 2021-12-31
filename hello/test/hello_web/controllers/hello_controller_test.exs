defmodule HelloWeb.HelloControllerTest do
  use HelloWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome Rich!"
  end

  test "GET /:messenger", %{conn: conn} do
    conn = get(conn,"/hello/rich")
    assert html_response(conn, 200) =~ "Hello World, from rich"
  end

  test "GET /:messenger from hello me", %{conn: conn} do
    conn = get(conn,"/hello")
    assert html_response(conn, 200) =~ "Hello World, from Phoenix!"
  end

  test "GET /:messenger from levi", %{conn: conn} do
    conn = get(conn,"/hello/levi")
    assert html_response(conn, 200) =~ "Hello World, from levi!"
  end
end
