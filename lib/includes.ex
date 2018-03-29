defmodule Includes do
  @doc false
  defmacro __using__(_) do
    quote do
      import Includes
    end
  end

  defmacro schema(source, [do: block]) do
    transform = expand_include(block)
    quote do
      use Ecto.Schema
      Ecto.Schema.schema unquote(source), [do: unquote(transform)]
    end
  end

  defp expand_include(block) do
    block
  end

end