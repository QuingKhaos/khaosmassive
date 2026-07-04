local khaoslib_recipe = require("__khaoslib__.recipe")
local khaoslib_technology = require("__khaoslib__.technology")

-- Move tungsten shells to tungsten weaponry tech and use tungsten carbides instead of tungsten plates
khaoslib_recipe:load("tungsten-shotgun-shell")
  :replace_ingredient("tungsten-plate", function(ingredient)
    ingredient.name = "tungsten-carbide"
    return ingredient
  end)
  :remove_unlock("tungsten-steel")
  :add_unlock("tungsten-weaponry")
  :commit()

-- Make tungsten weaponry a reward of Vulcanus instead of unlocking it via research trigger
khaoslib_technology:load("tungsten-weaponry")
  :remove_prerequisite("tungsten-carbide")
  :add_prerequisite("metallurgic-science-pack")
  :unset("research_trigger")
  :set({
    unit = {
      time = 60,
      count = 250,
      ingredients = {
        {"wood-science-pack", 1},
        {"steam-science-pack", 1},
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
      },
    },
  })
  :commit()
