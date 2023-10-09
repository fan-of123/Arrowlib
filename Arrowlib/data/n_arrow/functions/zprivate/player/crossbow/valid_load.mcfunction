scoreboard players operation #API.pull_cbow n_arrow.API = @s n_arrow.pull_cbow
scoreboard players operation #API.offhand n_arrow.API = @s n_arrow.cbow_offhand

execute if score @s n_arrow.cbow_offhand matches 0 run data modify storage n_arrow:storage CustomArrowData set from entity @s SelectedItem.tag.ChargedProjectiles[0]
execute if score @s n_arrow.cbow_offhand matches 1 run data modify storage n_arrow:storage CustomArrowData set from entity @s Inventory[{Slot:-106b}].tag.ChargedProjectiles[0]

function #n_arrow:public/load_crossbow
function #n_arrow:zprivate/end_pull_cbow