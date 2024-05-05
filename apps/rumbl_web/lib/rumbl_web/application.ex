defmodule RumblWeb.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      RumblWeb.Telemetry,
      RumblWeb.Endpoint,
      RumblWeb.Presence
    ]

    opts = [strategy: :one_for_one, name: RumblWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl true
  def config_change(changed, _new, removed) do
    RumblWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
