local khaoslib_technology = require("__khaoslib__.prototypes.technology")

-- Lock burner biochamber behind Gleba research
khaoslib_technology:load("biochamber")
  :remove_unlock_recipe(function(effect)
    return effect.type == "unlock-recipe" and effect.recipe:match("burner%-biochamber")
  end, {all = true})
  :commit()

khaoslib_technology:load {
  type = "technology",
  name = "burner-biochamber",
} :set_icons {
  {icon = "__space-age__/graphics/technology/biochamber.png", icon_size = 256, tint = {r = 0.3, g = 0.3, b = 0.3}},
} :set_prerequisites {"agricultural-science-pack"}
  :set_unit {
    time = 60,
    count = 1000,
    ingredients = {
      {"wood-science-pack", 1},
      {"steam-science-pack", 1},
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"space-science-pack", 1},
      {"agricultural-science-pack", 1},
    },
  }
  :add_unlock_recipe("burner-biochamber")
  :add_unlock_recipe("burner-biochamber-to-biochamber")
  :commit()
