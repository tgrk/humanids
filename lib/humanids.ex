defmodule HumanIDs do
  @moduledoc """
  Documentation for HumanIDs.
  """

  @doc """
  Generate Human Readable ID
  """
  @spec generate(keyword()) :: binary()
  def generate(opts \\ []) do
    keys = HumanIDs.Sequences.keys()

    2
    |> Range.new(Keyword.get(opts, :segments, 3))
    |> Enum.reduce([Integer.to_string(:rand.uniform(100))], fn _segment, acc ->
      [HumanIDs.Sequences.get_random(Enum.random(keys)) | acc]
    end)
    |> Enum.join("-")
  end
end
