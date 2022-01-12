local allow_in_space = {}
if mods["space-exploration"] and mods["Krastorio2"] then
  -- K2 matter-buildings
  if settings.startup["allow-matter-buildings-in-space"].value then
    table.insert(allow_in_space, {type = "assembling-machine", name = "kr-matter-assembler"})
    table.insert(allow_in_space, {type = "assembling-machine", name = "kr-matter-plant"})
    table.insert(allow_in_space, {type = "furnace", name = "kr-stabilizer-charging-station"})
  end
end

if mods["space-exploration"] then
  -- Moon Logic Combinator
  table.insert(allow_in_space, {type = "item", name = "mlc"})
  -- nixie tubes
  table.insert(allow_in_space, {type = "lamp", name = "nixie-tube"})
  table.insert(allow_in_space, {type = "lamp", name = "nixie-tube-small"})
  table.insert(allow_in_space, {type = "lamp", name = "nixie-tube-alpha"})
  -- improved combinator
  table.insert(allow_in_space, {type = "container", name = "improved-combinator"})
end

for _, entity in pairs(allow_in_space) do
  if entity and data.raw[entity.type] and data.raw[entity.type][entity.name] then
    data.raw[entity.type][entity.name].se_allow_in_space = true
  end
end
