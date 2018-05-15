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
    %{point | x: x}
  end

  @doc """
  Set the y attribute
  """
  def set_y(point, y) do
    %{point | y: y}
  end
end
