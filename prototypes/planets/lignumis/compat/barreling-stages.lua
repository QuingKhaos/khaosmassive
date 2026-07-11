local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load("wood-pulp-barrel"):remove_unlock("automation-2"):add_unlock("wood-liquefaction"):commit()
khaoslib_recipe:load("empty-wood-pulp-barrel"):remove_unlock("automation-2"):add_unlock("wood-liquefaction"):commit()
