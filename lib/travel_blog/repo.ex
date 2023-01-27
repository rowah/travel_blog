defmodule TravelBlog.Repo do
  use Ecto.Repo,
    otp_app: :travel_blog,
    adapter: Ecto.Adapters.Postgres
end
