local hyperFurnace = table.deepcopy(data.raw["item"]["electric-furnace"])

hyperFurnace.name = "hyper-furnace"
hyperFurnace.place_result = "hyper-furnace"
hyperFurnace.icons = {
  {
    icon_size = 64,
    icon = "__FactorioEndgameProduction__/graphics/item_hyperFurnace_image.png"
  },
}

local placeableHyperFurnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])
placeableHyperFurnace.name = "hyper-furnace"
placeableHyperFurnace.energy_usage = "640kW"
placeableHyperFurnace.max_health = 700
placeableHyperFurnace.crafting_speed = 4.0
placeableHyperFurnace.module_specification["module_slots"] = 6

placeableHyperFurnace.animation.layers[1].filename = "__FactorioEndgameProduction__/graphics/item_hyperFurnace_image.png"
placeableHyperFurnace.animation.layers[1].frame_count = 1

placeableHyperFurnace.animation.layers[2].filename = "__FactorioEndgameProduction__/graphics/item_hyperFurnace_image.png"
placeableHyperFurnace.animation.layers[2].frame_count = 1

local recipeHyperFurnace = table.deepcopy(data.raw["recipe"]["electric-furnace"])
recipeHyperFurnace.enabled = true
recipeHyperFurnace.name = "hyper-furnace"
recipeHyperFurnace.ingredients = {
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
        type = "item", 
        name = "sulfuric-acid-barrel", 
        amount = 5
    }
}
recipeHyperFurnace.result = "hyper-furnace"

local techHyperFurnace = table.deepcopy(data.raw["technology"]["automation-3"])
techHyperFurnace.name = "hyper-production"
techHyperFurnace.icon = "__FactorioEndgameProduction__/graphics/item_hyperFurnace_image_x256.png"  
techHyperFurnace.effects =
    {
      {
        type = "unlock-recipe",
        recipe = "hyper-furnace"
      }
    }
techHyperFurnace.prerequisites = {"automation-3","mining-productivity-3","productivity-module-3","speed-module-3"}
techHyperFurnace.unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 45,
      count = 1000
    }

data:extend{hyperFurnace, placeableHyperFurnace, recipeHyperFurnace, techHyperFurnace}