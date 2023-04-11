defmodule RentCarsWeb.CategoryController do
  use RentCarsWeb, :controller

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{
      data: [
        %{
          id: 123,
          name: "Category 1",
          description: "description category 1"
        }
      ]
    })
  end
end
