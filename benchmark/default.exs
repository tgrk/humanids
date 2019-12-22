Benchee.run(%{
  "10ids" => fn -> Enum.map(1..10, fn _ -> HumanIDs.generate() end) end,
  "100ids" => fn -> Enum.map(1..100, fn _ -> HumanIDs.generate() end) end,
  "1000ids" => fn -> Enum.map(1..1000, fn _ -> HumanIDs.generate() end) end
})
