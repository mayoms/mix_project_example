defmodule WidgetsApi.Router do
  use Plug.Router
  alias Widgets.Storage

  plug(Plug.Logger, log: :debug)
  plug(:match)
  plug(:dispatch)

  get "/widgets" do
    body =
      %{
        api: __MODULE__,
        data: Storage.all()
      }
      |> Jason.encode!()

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, body)
  end

  get "/legacy/widgets" do
    body =
      %{
        api: __MODULE__,
        data: Storage.all()
      }
      |> Jason.encode!()

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, body)
  end

  get "/internal/widgets" do
    body =
      %{
        api: __MODULE__,
        data: Storage.all()
      }
      |> Jason.encode!()

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, body)
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end
