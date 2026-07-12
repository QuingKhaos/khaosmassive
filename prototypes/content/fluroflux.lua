local khaoslib_entity = require("__khaoslib__.prototypes.entity")

khaoslib_entity:load("plant", "stingfrond-plant")
  :remove_minable_result("wood")
  :commit()
