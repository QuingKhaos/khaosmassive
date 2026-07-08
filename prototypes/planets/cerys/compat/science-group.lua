local khaoslib_recipe = require("__khaoslib__.recipe")

-- Put space science pack recipe into the proper subgroup
khaoslib_recipe:load("cerys-space-science-pack-from-methane-ice")
  :set {subgroup = "cerysian-science-pack"}
  :commit()
