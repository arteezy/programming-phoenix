defmodule RumblWeb.ChannelCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with channels
      import Phoenix.ChannelTest
      import RumblWeb.ChannelCase

      # The default endpoint for testing
      @endpoint RumblWeb.Endpoint
    end
  end

  setup tags do
    Rumbl.DataCase.setup_sandbox(tags)
    :ok
  end
end
