local hyperFurnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])

fireArmor.name = "hyper-furnace"
fireArmor.icons = {
  {
    icon_size = 64,
    icon = "__base__/graphics/item_hyperFurnace_image.png"
  },
}

hyperFurnace.energy_usage = "640kW"
hyperFurnace.max_health = 700
hyperFurnace.crafting_speed = 4.0

local recipe = table.deepcopy(data.raw["recipe"]["electric-furnace"])
recipe.enabled = true
recipe.name = "hyper-furnace"
recipe.result = "hyper-furnace"
recipe.ingredients = {
    {
        type = "item",
        name = "steel-plate",
        amount = 100
    },
    {
        type = "item",
        name = "processing-unit",
        amount = 20
    },
    {
        type = "item",
        name = "advanced-circuit",
        amount = 20
    },
    {
        type = "fluid", 
        name = "sulfuric-acid", 
        amount = 50
    }
}

data:extend{hyperFurnace, recipe}