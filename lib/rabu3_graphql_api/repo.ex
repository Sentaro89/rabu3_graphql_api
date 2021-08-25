defmodule Rabu3GraphqlApi.Repo do
  use Ecto.Repo,
    otp_app: :rabu3_graphql_api,
    adapter: Ecto.Adapters.Postgres
end
