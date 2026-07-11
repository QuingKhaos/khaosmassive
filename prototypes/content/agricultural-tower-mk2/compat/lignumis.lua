local khaoslib_entity = require("__khaoslib__.prototypes.entity")

-- Add noise emissions from agricultural-tower to agricultural-tower-mk2
khaoslib_entity:load("agricultural-tower", "agricultural-tower-mk2")
  :add_emission("noise", khaoslib_entity.get_emissions("agricultural-tower", "agricultural-tower")["noise"])
  :commit()
