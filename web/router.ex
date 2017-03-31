defmodule Tunnel.Router do
  use Tunnel.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Tunnel do
    pipe_through :api
  end
end
