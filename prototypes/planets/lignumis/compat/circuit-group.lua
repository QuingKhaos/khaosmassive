if settings.startup["Schall-CGP-individual-combinator-subgroups"] then
  data.raw["item"]["burner-lamp"].subgroup = "circuit-visual-lamp"
  data.raw["recipe"]["burner-lamp"].subgroup = "circuit-visual-lamp"
  data.raw["recipe"]["burner-lamp-copper"].subgroup = "circuit-visual-lamp"
else
  data.raw["item"]["burner-lamp"].subgroup = "circuit-visual"
  data.raw["recipe"]["burner-lamp"].subgroup = "circuit-visual"
  data.raw["recipe"]["burner-lamp-copper"].subgroup = "circuit-visual"
end

data.raw["item"]["active-noise-cancelling-tower"].subgroup = "circuit-auditory"
data.raw["recipe"]["active-noise-cancelling-tower"].subgroup = "circuit-auditory"
