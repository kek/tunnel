defmodule Tunnel.Router do
  use Tunnel.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :web do
    plug :accepts, ["html"]
  end

  scope "/api", Tunnel do
    pipe_through :api
  end

  scope "/", Tunnel do
    pipe_through :web

    get "/", PageController, :index
  end
end
