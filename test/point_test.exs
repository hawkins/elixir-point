defmodule PointTest do
  use ExUnit.Case
  doctest Point

  test "can create point" do
    assert %Point{x: 3, y: 6} != nil
  end

  test "can print point" do
    p = %Point{x: 0, y: 1}
    assert Point.print(p) == "(0, 1)"
  end

  test "can update x" do
    p = %Point{x: 0, y: 1}
    assert p.x == 0
    p = Point.set_x(p, 1)
    assert p.x == 1
  end

  test "can update y" do
    p = %Point{x: 0, y: 1}
    assert p.y == 1
    p = Point.set_y(p, 2)
    assert p.y == 2
  end

  test "can set generically" do
    p = %Point{x: 0, y: 1}
    p = Point.set(p, :x, 2)
    assert p.x == 2
  end
end
