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

placeableHyperFurnace.animation = {
  layers = {
    {
      filename = "__FactorioEndgameProduction__/graphics/entity_hyperFurnace_image.png",
      priority = "high",
      width = 204,
      height = 199,
      frame_count = 1,
      shift = util.by_pixel(-1.5, 1.5),
      scale = 0.5,
      hr_version =
      {
        filename = "__FactorioEndgameProduction__/graphics/entity_hyperFurnace_image.png",
        priority = "high",
        width = 204,
        height = 199,
        frame_count = 1,
        shift = util.by_pixel(-1.25, 2),
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0},
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
        priority = "high",
        width = 227,
        height = 171,
        frame_count = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(11.25, 7.75),
        scale = 0.5
      }
    }
  }
}

placeableHyperFurnace.working_visualisations = {
  animation = {
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
      priority = "high",
      width = 25,
      height = 15,
      frame_count = 12,
      animation_speed = 0.5,
      shift = {0.015625, 0.890625},
      tint = {r=0, g=0.5, b=1.0, a=1.0},
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
        priority = "high",
        width = 60,
        height = 56,
        frame_count = 12,
        animation_speed = 0.5,
        shift = util.by_pixel(1.75, 32.75),
        tint = {r=0, g=0.5, b=1.0, a=1.0},
        scale = 0.5
      }
    }
  }
}

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