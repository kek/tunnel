defmodule Tunnel.Executable do
  use GenServer

  def start_link(executable) do
    GenServer.start_link(__MODULE__, [executable])
  end

  def init([executable]) do
    port = Port.open({:spawn, executable}, [])
    {:ok, port}
  end
end
