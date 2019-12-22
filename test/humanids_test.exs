defmodule HumanIDsTest do
  use ExUnit.Case
  doctest HumanIDs

  describe "generate/0" do
    test "default format" do
      id = HumanIDs.generate()
      assert length(String.split(id, "-")) == 3
    end

    test "randomn one hunderd IDs" do
      ids = Enum.map(1..100, fn _ -> HumanIDs.generate() end)
      assert length(Enum.uniq(ids)) == 100
    end
  end
end
