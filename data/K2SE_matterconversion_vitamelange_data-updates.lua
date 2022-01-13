local util = require("__LarkenxK2SETweaks__/data/util")
if mods["space-exploration"] and mods["Krastorio2"] then
    if settings.startup["vitamelange-matter-growth"].value then
        local vita_recipe = data.raw["recipe"]["matter-to-se-vitamelange"]
        if vita_recipe then
            table.insert(vita_recipe.ingredients, {type = "item", name = "se-vitamelange", amount = 1 })
            table.insert(vita_recipe.ingredients, {type = "item", name = "se-nutrient-vat", amount = 1 })
            table.insert(vita_recipe.ingredients, {type = "item", name = "biomass", amount = 5 })
            vita_recipe.main_product = "se-vitamelange"
        end
    end
end