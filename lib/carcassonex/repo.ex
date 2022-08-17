defmodule Carcassonex.Repo do
  use Ecto.Repo,
    otp_app: :carcassonex,
    adapter: Ecto.Adapters.Postgres
end
