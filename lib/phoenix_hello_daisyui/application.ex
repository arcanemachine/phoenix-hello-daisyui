defmodule PhoenixHelloDaisyui.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      PhoenixHelloDaisyuiWeb.Telemetry,
      # Start the Ecto repository
      PhoenixHelloDaisyui.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhoenixHelloDaisyui.PubSub},
      # Start Finch
      {Finch, name: PhoenixHelloDaisyui.Finch},
      # Start the Endpoint (http/https)
      PhoenixHelloDaisyuiWeb.Endpoint
      # Start a worker by calling: PhoenixHelloDaisyui.Worker.start_link(arg)
      # {PhoenixHelloDaisyui.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhoenixHelloDaisyui.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PhoenixHelloDaisyuiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
