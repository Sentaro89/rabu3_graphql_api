defmodule Rabu3GraphqlApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Rabu3GraphqlApi.Repo,
      # Start the Telemetry supervisor
      Rabu3GraphqlApiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Rabu3GraphqlApi.PubSub},
      # Start the Endpoint (http/https)
      Rabu3GraphqlApiWeb.Endpoint
      # Start a worker by calling: Rabu3GraphqlApi.Worker.start_link(arg)
      # {Rabu3GraphqlApi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Rabu3GraphqlApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Rabu3GraphqlApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
