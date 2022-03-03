defmodule ModuleDependency.ModuleB do
  @moduledoc """
  Defines a local module attribute based on the value exported by `ModuleA` funciton.
  """

  import ModuleDependency.ModuleA, only: [values: 0]

  @local_values values()

  @doc """
  Values stored on `@local_values`.
  """
  @spec values() :: list(atom())
  def values, do: @local_values
end
