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
  :set({
    group = "bioprocessing",
    subgroup = "gleba-juice",
  })
  :commit()

khaoslib_recipe:load("juice-filtering")
  :set({
    group = "bioprocessing",
    subgroup = "gleba-juice",
  })
  :commit()

khaoslib_recipe:load("jellynut-juicing")
  :set({
    group = "bioprocessing",
    subgroup = "gleba-juice",
  })
  :commit()

khaoslib_recipe:load("yumako-juicing")
  :set({
    group = "bioprocessing",
    subgroup = "gleba-juice",
  })
  :commit()
