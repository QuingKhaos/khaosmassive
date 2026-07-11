local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["wood-logistics-cargo-wagon"].value then
  data.raw["item-with-entity-data"]["wood-cargo-wagon"].subgroup = "vehicles-railway"
  khaoslib_recipe:load("wood-cargo-wagon"):set {subgroup = "vehicles-railway"} :commit()
end
