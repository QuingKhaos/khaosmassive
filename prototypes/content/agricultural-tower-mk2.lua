local khaoslib_recipe = require("__khaoslib__.recipe")

require("agricultural-tower-mk2.compat")

-- Increase energy usage to be more in line with advanced buildings
data.raw["agricultural-tower"]["agricultural-tower-mk2"].energy_usage = "1.5MW"

-- Create a more challenging recipe
khaoslib_recipe:load("agricultural-tower-mk2")
  :set_ingredients({
    {type = "item", name = "raw-fish", amount = 1},
    {type = "item", name = "quantum-processor", amount = 5},
    {type = "item", name = "agricultural-tower", amount = 1},
    {type = "item", name = "pentapod-egg", amount = 20},
  })
  :commit()
