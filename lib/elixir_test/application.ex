defmodule ElixirTest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec
    children = [
      supervisor(ElixirTest.Repo, []),
      supervisor(ElixirTestWeb.Endpoint, []),
      # Starts a worker by calling: ElixirTest.Worker.start_link(arg)
      # {ElixirTest.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirTest.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ElixirTestWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
