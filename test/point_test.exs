defmodule PointTest do
  use ExUnit.Case
  doctest Point

  test "can create point" do
    p = %Point{x: 0, y: 1}
    assert Point.print(p) == "(0, 1)"
  end
end
