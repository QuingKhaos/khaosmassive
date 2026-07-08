local khaoslib_entity = require("__khaoslib__.entity")
local khaoslib_recipe = require("__khaoslib__.recipe")

-- Increase energy usage to be more in line with advanced buildings
khaoslib_entity:load("agricultural-tower", "agricultural-tower-mk2")
  :set {energy_usage = "1.5MW"}
  :commit()

-- Create a more challenging recipe
khaoslib_recipe:load("agricultural-tower-mk2")
  :set_ingredients({
    {type = "item", name = "raw-fish", amount = 1},
    {type = "item", name = "quantum-processor", amount = 5},
    {type = "item", name = "agricultural-tower", amount = 1},
    {type = "item", name = "pentapod-egg", amount = 20},
  })
  :commit()
