defmodule Lightmap.Repo do
  use Ecto.Repo,
    otp_app: :lightmap,
    adapter: Ecto.Adapters.Postgres
end
