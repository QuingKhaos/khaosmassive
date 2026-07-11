local khaoslib_entity = require("__khaoslib__.prototypes.entity")

-- Clear all surface conditions
khaoslib_entity:load("transport-belt", "wood-transport-belt"):clear_surface_conditions():commit()
khaoslib_entity:load("underground-belt", "wood-underground-belt"):clear_surface_conditions():commit()
khaoslib_entity:load("splitter", "wood-splitter"):clear_surface_conditions():commit()
khaoslib_entity:load("splitter", "sushi-wood-splitter"):clear_surface_conditions():commit()
khaoslib_entity:load("inserter", "steam-inserter"):clear_surface_conditions():commit()
khaoslib_entity:load("electric-pole", "small-electric-pole"):clear_surface_conditions():commit()
khaoslib_entity:load("electric-pole", "big-wooden-pole"):clear_surface_conditions():commit()
