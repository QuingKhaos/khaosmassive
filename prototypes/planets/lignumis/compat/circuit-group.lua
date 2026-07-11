local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["Schall-CGP-individual-combinator-subgroups"] then
  khaoslib_item:load("burner-lamp"):set {subgroup = "circuit-visual-lamp"} :commit()
  khaoslib_recipe:load("burner-lamp"):set {subgroup = "circuit-visual-lamp"} :commit()
  khaoslib_recipe:load("burner-lamp-copper"):set {subgroup = "circuit-visual-lamp"} :commit()
else
  khaoslib_item:load("burner-lamp"):set {subgroup = "circuit-visual"} :commit()
  khaoslib_recipe:load("burner-lamp"):set {subgroup = "circuit-visual"} :commit()
  khaoslib_recipe:load("burner-lamp-copper"):set {subgroup = "circuit-visual"} :commit()
end

khaoslib_item:load("active-noise-cancelling-tower"):set {subgroup = "circuit-auditory"} :commit()
khaoslib_recipe:load("active-noise-cancelling-tower"):set {subgroup = "circuit-auditory"} :commit()
