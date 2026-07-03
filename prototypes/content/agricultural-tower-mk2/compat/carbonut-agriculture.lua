-- Increase pressure surface condition to be placeable for carbonut agriculture
PlanetsLib.relax_surface_conditions(data.raw["agricultural-tower"]["agricultural-tower-mk2"], {property = "pressure", max = 4000})
