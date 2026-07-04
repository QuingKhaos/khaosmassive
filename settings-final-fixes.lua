local Settings = require("__cf-lib__.settings.Settings")

-- Alloy Smelting
Settings.force("alloy-smelting-create-kilns", true)
Settings.force("alloy-smelting-coke", true)
Settings.force("alloy-smelting-coke-fuel-value", "1.0MJ")
Settings.force("alloy-smelting-metallurgy", true)

-- Asteroid Belt
Settings.forceDefault("density-multiplier")

-- Astroponics
Settings.force("astroponics-gleba-crops", true)
Settings.force("astroponics-crude-oil", true)

-- Better StarMap Background
Settings.force("asteroid-belt-1-enabled", false)
Settings.force("asteroid-belt-2-enabled", false)

-- Burner Biochamber
Settings.forceDefault("bbio-fuel-consumption")
Settings.forceDefault("bbio-pollution")
Settings.forceDefault("bbio-enable-solid-fuel-recipes")
Settings.forceDefault("bbio-list-type")
Settings.forceDefault("bbio-block-placement-nauvis")
Settings.forceDefault("bbio-block-placement-vulcanus")
Settings.forceDefault("bbio-block-placement-gleba")
Settings.forceDefault("bbio-block-placement-fulgora")
Settings.forceDefault("bbio-block-placement-aquilo")
Settings.forceDefault("bbio-block-placement-space-platform")

-- Coralmium Agriculture
Settings.force("coralmium-modify-vanilla", true)

-- Diversitree
Settings.force("s6x-landfill-trees", true)
Settings.force("s6x-pollution-immune-trees", false)

-- Lignumis
Settings.force("lignumis-infinite-astroponics-productivity-research", true)

-- Muluna
Settings.force("muluna-hardcore-restrict-crusher", true)
Settings.force("muluna-hardcore-restrict-asteroid-collector", true)
Settings.force("muluna-hardcore-classic-wood-gasification", true)
Settings.force("muluna-hardcore-remove-space-casino", true)
Settings.forceDefault("muluna-hardcore-lock-cargo-drops")
Settings.forceDefault("muluna-hardcore-lock-logistic-system-technology")
Settings.forceDefault("muluna-hardcore-greenhouses-require-space-science")
Settings.forceDefault("muluna-hardcore-silicon-requires-space-science")
Settings.forceDefault("muluna-easy-vanilla-rocket-part-costs")
Settings.forceDefault("muluna-easy-vanilla-advanced-thruster-fuel-costs")
Settings.force("muluna-easy-wood-gasification-productivity", true)
Settings.forceDefault("muluna-easy-simple-wood-gasification")
Settings.forceDefault("muluna-easy-simple-nanofoamed-polymers")
Settings.forceDefault("muluna-easy-revert-changes-to-space-platform-technology")
Settings.forceDefault("muluna-alternative-automation-pack-recipe")
Settings.forceDefault("muluna-easy-alternative-battery-recipe")
Settings.forceDefault("space-science-pack-output")
Settings.forceDefault("space-science-pack-energy")
Settings.forceDefault("muluna-interstellar-science-pack-packs-required")
Settings.force("muluna-interstellar-science-pack-dynamic-packs-required", true)
Settings.forceDefault("muluna-interstellar-science-pack-dynamic-packs-required-percentage-required")
Settings.forceDefault("muluna-balance-fulgoran-cargo-drop-radius")
Settings.forceDefault("muluna-balance-fulgoran-cargo-drop-item-multiplier")
Settings.forceDefault("muluna-balance-exploration-science-data-cost")
Settings.forceDefault("platform-power-consumption")
Settings.forceDefault("muluna-change-quality-science-pack-drain")
Settings.forceDefault("override-space-connection")

-- Science group
Settings.force("science-tab-always-move-labs", true)

-- Seabloom Algaculture
Settings.force("seabloom-modify-vanilla", true)

-- Wooden Industry
Settings.force("wood-industry-resin", true)
Settings.force("wood-industry-nerf-wood-fuel", true)
Settings.force("wood-industry-heavy-oil-adsorption", true)
Settings.force("wood-industry-lubricant", true)

-- Wooden Logistics
Settings.force("wood-logistics-lumber", true)
Settings.force("wood-logistics-lumber-mill", true)
Settings.force("wood-logistics-woodtronics", true)
Settings.force("wood-logistics-belts", true)
Settings.force("wood-logistics-belts-modify", true)
Settings.force("wood-logistics-inserter", true)
Settings.forceDefault("wood-logistics-rail-cost")
Settings.force("wood-logistics-cargo-wagon", true)
Settings.force("wood-logistics-assembling-machine", true)
Settings.force("wood-logistics-nerf-small-electric-pole", true)
Settings.forceDefault("wood-logistics-repair-pack-cost")

-- Wooden Military
Settings.force("wood-military-smg-ammo", true)
Settings.force("wood-military-shotgun-ammo", true)
Settings.force("wood-military-rockets", true)
Settings.default("wood-military-artillery", true)
Settings.forceDefault("wood-military-ammo-cost")
Settings.force("wood-military-modify-vanilla", true)
Settings.force("wood-military-damage-buff", true)
Settings.forceDefault("wood-military-wood-modifier")
