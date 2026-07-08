local khaoslib_entity = require("__khaoslib__.entity")

-- Add noise emissions from agricultural-tower to agricultural-tower-mk2
khaoslib_entity:load("agricultural-tower", "agricultural-tower-mk2")
  :add_emission("noise", data.raw["agricultural-tower"]["agricultural-tower"].energy_source.emissions_per_minute.noise)
  :commit()
