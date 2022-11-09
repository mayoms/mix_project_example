defmodule Widgets.Repo do
  use Ecto.Repo,
    otp_app: :widgets_api,
    adapter: Ecto.Adapters.Postgres
end
