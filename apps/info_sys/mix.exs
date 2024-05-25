defmodule InfoSys.MixProject do
  use Mix.Project

  def project do
    [
      app: :info_sys,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.18",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {InfoSys.Application, []}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/backends"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:sweet_xml, "~> 0.7.5"}
    ]
  end
end
