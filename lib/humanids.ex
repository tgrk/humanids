defmodule HumanIDs do
  @moduledoc """
  Generate human-readable IDs from random word segments.
  """

  @doc """
  Generate a human-readable ID.

  ## Options

  - `:segments` - total number of hyphen-separated segments. Defaults to `3`.

  ## Examples

      iex> HumanIDs.generate() |> String.split("-") |> length()
      3

      iex> HumanIDs.generate(segments: 4) |> String.split("-") |> length()
      4
  """
  @spec generate(keyword()) :: String.t()
  def generate(opts \\ []) do
    keys = HumanIDs.Sequences.keys()
    segments = Keyword.get(opts, :segments, 3)
    suffix = Integer.to_string(:rand.uniform(100))

    2
    |> Range.new(segments)
    |> Enum.map(fn _segment -> HumanIDs.Sequences.get_random(Enum.random(keys)) end)
    |> Kernel.++([suffix])
    |> Enum.join("-")
  end
end
