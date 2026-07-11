-- Check if optional khaosmassive mods are missing, but the compatible mod is present
local mod_list = {
    ["khaosmassive-factorissimo"] = "factorissimo-2-notnotmelon",
    ["khaosmassive-frozen-food"] = "FrozenFood",
    ["khaosmassive-frozen-goodies"] = "frozen-goodies",
    ["khaosmassive-lane-balancers"] = "lane-balancers",
    ["khaosmassive-loaders-modernized"] = "loaders-modernized",
    ["khaosmassive-quantum-fabricator"] = "quantum-fabricator",
    ["khaosmassive-smart-inserters"] = "Smart_Inserters",
    ["khaosmassive-spoilage-solution"] = "spoilage-solution",
    ["khaosmassive-sushi-splitters"] = "sushi-splitters",
}

for mod_name, compatible_mod in pairs(mod_list) do
    if not mods[mod_name] and mods[compatible_mod] then
        log(mod_name .. " is missing, but " .. compatible_mod .. " is present. Please install " .. mod_name .. ".")
    end
end
