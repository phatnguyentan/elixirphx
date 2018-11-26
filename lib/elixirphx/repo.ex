defmodule Elixirphx.Repo do
  use Ecto.Repo,
    otp_app: :elixirphx,
    adapter: Ecto.Adapters.Postgres
end
