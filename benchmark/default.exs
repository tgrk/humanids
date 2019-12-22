Benchee.run(%{
  "Generate 10 ids" => fn -> Enum.map(1..10, fn _ -> HumanIDs.generate() end) end,
  "Generate 100 ids" => fn -> Enum.map(1..100, fn _ -> HumanIDs.generate() end) end,
  "Genrate 1000 ids" => fn -> Enum.map(1..1000, fn _ -> HumanIDs.generate() end) end
})
