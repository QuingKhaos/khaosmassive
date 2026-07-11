local khaoslib_technology = require("__khaoslib__.prototypes.technology")

-- Ensure proper tech prerequisites for wood pyrolysis
khaoslib_technology:load("wood-pyrolysis")
  :remove_prerequisite("tree-seeding")
  :add_prerequisite("agricultural-science-pack")
  :commit()
