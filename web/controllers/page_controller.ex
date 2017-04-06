defmodule Tunnel.PageController do
  use Tunnel.Web, :controller

  def index(conn, %{}) do
    render conn, %{}
  end
end
