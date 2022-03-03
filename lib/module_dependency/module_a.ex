defmodule ModuleDependency.ModuleA do
  @moduledoc """
  Defines values on module attribute and export it through a public function.
  """

  @values [:value_a, :value_b, :value_c]
  # @values [1, 2, 3]

  @doc """
  All possible values.
  """
  @spec values() :: list(atom())
  def values, do: @values
end
