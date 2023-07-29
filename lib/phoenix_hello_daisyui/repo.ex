defmodule PhoenixHelloDaisyui.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_hello_daisyui,
    adapter: Ecto.Adapters.Postgres
end
