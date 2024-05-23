defmodule RumblWeb.ConnCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      import Plug.Conn
      import Phoenix.ConnTest
      import Rumbl.TestHelpers
      import RumblWeb.ConnCase

      alias RumblWeb.Router.Helpers, as: Routes

      @endpoint RumblWeb.Endpoint
    end
  end

  setup tags do
    Rumbl.DataCase.setup_sandbox(tags)
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
