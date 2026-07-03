khaoslib_recipe = require("__khaoslib__.recipe")
khaoslib_technology = require("__khaoslib__.technology")

-- Place Vulcanus planet discovery back to where it belongs
khaoslib_technology:load("planet-discovery-vulcanus")
  :remove_prerequisite("rocket-turret")
  :commit();

-- Add recipe to generate spoilage from carbonuts to craft agricultural towers
khaoslib_recipe:load({
  type = "recipe",
  name = "carbonut-spoilage",
  icons = {
    {icon = "__carbonut_agriculture__/graphics/carbonut.png", icon_size = 64, shift = {-12, -12}, scale = 0.4},
    {icon = "__space-age__/graphics/icons/spoilage.png", draw_background = true},
  },
  category = "kiln-smelting",
  order = "b[agriculture]-e[spoilage]",
  group = "intermediate-products",
  subgroup = "agriculture-processes",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  allow_decomposition = false,
  energy_required = 1.6,
  ingredients = {
    {type = "item", name = "carbonut", amount = 2},
  },
  results = {
    {type = "item", name = "spoilage", amount = 1},
  },
}):commit()

khaoslib_technology:load("carbonut-agriculture")
  :add_unlock_recipe("carbonut-spoilage")
  :add_unlock_recipe("agricultural-tower")
  :commit()
