defmodule HumanIDsTest do
  use ExUnit.Case, async: true

  doctest HumanIDs

  describe "generate/0" do
    test "returns a three-part id" do
      id = HumanIDs.generate()

      assert length(String.split(id, "-")) == 3
    end

    test "adds a numeric suffix between 1 and 100" do
      suffix =
        HumanIDs.generate()
        |> String.split("-")
        |> List.last()

      assert {number, ""} = Integer.parse(suffix)
      assert number in 1..100
    end
  end

  describe "generate/1" do
    test "uses the requested number of segments" do
      id = HumanIDs.generate(segments: 4)

      assert length(String.split(id, "-")) == 4
    end
  end
end
