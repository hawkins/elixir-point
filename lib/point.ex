defmodule Point do
  @moduledoc """
  Point class containing X, Y
  """

  defstruct x: 0.0, y: 0.0

  def print(node) do
    "(#{node.x}, #{node.y})"
  end
end
