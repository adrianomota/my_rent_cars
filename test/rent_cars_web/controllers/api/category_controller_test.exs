defmodule RentCarsWeb.Api.CategoryControllerTest do
  use RentCarsWeb.ConnCase

  describe "Category" do
    test "list all categories", %{conn: conn} do
      conn = get(conn, "/api/categories")

      assert json_response(conn, 200)["data"] == [
               %{
                 "id" => 123,
                 "name" => "Category 1",
                 "description" => "description category 1"
               }
             ]
    end
  end
end
