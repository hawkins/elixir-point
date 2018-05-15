defmodule Point do
  @moduledoc """
  Point class containing X, Y
  """

  @enforce_keys [:x, :y]
  defstruct [:x, :y]

  @doc """
  Represent the Point as a String
  """
  def print(node) do
    "(#{node.x}, #{node.y})"
  end

  @doc """
  Set the x attribute
  """
  def set_x(point, x) do
    set(point, :x, x)
  end

  @doc """
  Set the y attribute
  """
  def set_y(point, y) do
    set(point, :y, y)
  end

  @doc """
  Set attributes generically

  ## Parameters

    - point: Point
    - flag: Atom key to update
    - value: Value to set at key

  ## Examples

      iex> Point.set(%Point{x: 1, y: 0}, :x, 3)
      %Point{x: 3, y: 0}

  """
  def set(point, flag, value) do
    # %{:x => point.x, :y => point.y, flag => value}
    Map.put(point, flag, value)
  end
end
