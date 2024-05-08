defmodule InfoSys.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Supervisor.child_spec({InfoSys.Counter, 15}, id: :long),
      Supervisor.child_spec({InfoSys.Counter, 5}, id: :short),
      Supervisor.child_spec({InfoSys.Counter, 10}, id: :medium)
    ]

    opts = [strategy: :one_for_one, name: InfoSys.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
