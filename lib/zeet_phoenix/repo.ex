defmodule ZeetPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :zeet_phoenix,
    adapter: Ecto.Adapters.Postgres
end
