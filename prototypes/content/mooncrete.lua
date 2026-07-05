khaoslib_recipe = require("__khaoslib__.recipe")
khaoslib_technology = require("__khaoslib__.technology")

-- Same walking speed as their concrete equivalents for mooncrete
data.raw["tile"]["mooncrete"].walking_speed_modifier = data.raw["tile"]["concrete"].walking_speed_modifier
data.raw["tile"]["refined-mooncrete"].walking_speed_modifier = data.raw["tile"]["refined-concrete"].walking_speed_modifier

-- Create new technology for mooncrete and refined mooncrete
khaoslib_recipe:load("mooncrete")
  :remove_unlock("muluna-advanced-stone-processing")
  :commit()

khaoslib_recipe:load("refined-mooncrete")
  :remove_unlock("muluna-alumina-processing")
  :commit()

khaoslib_technology:load {
  type = "technology",
  name = "mooncrete",
  icon = "__khaosmassive__/graphics/mooncrete/mooncrete_tech.png",
  icon_size = 256,
  prerequisites = {
    "muluna-regolith-digging",
    "muluna-alumina-processing",
    "wood-gas-processing",
    "space-science-pack",
  },
  unit = {
    time = 30,
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"space-science-pack", 1},
    },
  },
} :add_unlock_recipe("mooncrete")
  :add_unlock_recipe("refined-mooncrete")
  :commit()
