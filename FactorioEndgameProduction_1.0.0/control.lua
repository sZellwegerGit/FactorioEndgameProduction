--function printElectricalFurnace()
--    game.print(game.entity_prototypes["electric-furnace"]["animation"])
--    game.print(game.entity_prototypes["electric-furnace"]["working_visualisations"])
--end

function setToNight()
    LuaSurface.daytime(0.8)
end

commands.add_command("setToNight", "Set Time of day to night", setToNight)

--commands.add_command("printEF", "Should print all the electrical furnace prototype attributes", printElectricalFurnace)