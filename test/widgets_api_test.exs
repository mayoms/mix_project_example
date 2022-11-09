defmodule WidgetsApiTest do
  use ExUnit.Case
  doctest WidgetsApi

  test "greets the world" do
    assert WidgetsApi.hello() == :world
  end
end
