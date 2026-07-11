local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

-- Move recipes to cubic tab
khaoslib_recipe:load("destabilized-cube-matter-recycling")
  :set {subgroup = "cubic"}
  :commit()

-- Remove redundant recipes
khaoslib_recipe:load("cube-jelly-basic")
  :remove_unlock("planet-discovery-cubium")
  :commit()
  :remove()

-- Move planetary cubic science pack recipes to be unlocked by the appropriate research
local planetary_packs = {
  {name = "metallurgic", copy_tech = "planet-discovery-vulcanus"},
  {name = "agricultural", copy_tech = "planet-discovery-gleba"},
  {name = "electromagnetic", copy_tech = "planet-discovery-fulgora"},
  {name = "cryogenic", copy_tech = "planet-discovery-aquilo"},
  {name = "promethium", copy_tech = "promethium-science-pack"},
}

local cube_mastery_4 = khaoslib_technology:load("cube-mastery-4")

for _, pack in pairs(planetary_packs) do
  if khaoslib_recipe.exists(pack.name .. "-science-pack-cubic") and khaoslib_technology.exists(pack.copy_tech) and khaoslib_technology.exists(pack.name .. "-science-pack") then
    khaoslib_technology:load(pack.copy_tech)
      :copy(pack.name .. "-science-pack-cubic")
      :set_icons {
        {icon = "__cubium__/graphics/technology/ultradense-technology-yellow.png", icon_size = 256},
        {icon = data.raw["technology"][pack.name .. "-science-pack"].icon, icon_size = data.raw["technology"][pack.name .. "-science-pack"].icon_size, scale = 0.4, shift = {1, -10}},
      }
      :set_prerequisites {"cube-mastery-4", pack.name .. "-science-pack"}
      :merge_unit {time = 15, count = 1}
      :add_science_pack {pack.name .. "-science-pack", 1}
      :clear_effects()
      :add_unlock_recipe(pack.name .. "-science-pack-cubic")
      :commit()

    cube_mastery_4:remove_unlock_recipe(pack.name .. "-science-pack-cubic")
  end
end

cube_mastery_4:commit()

-- Add correct prerequisites for infinite cubic science productivity
local science_pack_prod = khaoslib_technology:load("cubic-science-pack-productivity-infinite")

for _, ingredient in pairs(khaoslib_technology.get_science_packs("cubic-science-pack-productivity-infinite")) do
  if khaoslib_technology.exists(ingredient[1]) then
    science_pack_prod:add_prerequisite(ingredient[1])
  end
end

science_pack_prod:commit()
