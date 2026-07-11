local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

data:extend({
  {
    type = "item-subgroup",
    name = "gleba-juice",
    group = "bioprocessing",
    order = "n"
  }
})

khaoslib_item:load("carbon-bacteria")
  :set {subgroup = "gleba-juice"}
  :commit()

khaoslib_recipe:load("carbon-bacteria-breeding")
  :set {subgroup = "gleba-juice"}
  :commit()

khaoslib_recipe:load("juice-filtering")
  :set {subgroup = "gleba-juice"}
  :commit()

khaoslib_recipe:load("jellynut-juicing")
  :set {subgroup = "gleba-juice"}
  :commit()

khaoslib_recipe:load("yumako-juicing")
  :set {subgroup = "gleba-juice"}
  :commit()
