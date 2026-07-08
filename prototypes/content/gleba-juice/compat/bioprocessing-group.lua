local khaoslib_recipe = require("__khaoslib__.recipe")

data:extend({
  {
    type = "item-subgroup",
    name = "gleba-juice",
    group = "bioprocessing",
    order = "n"
  }
})

data.raw["item"]["carbon-bacteria"].subgroup = "gleba-juice"

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
