advancement revoke @s only n_arrow:load_crossbow

data modify storage n_arrow:storage bowMacro set value {id:-1}
execute store result storage n_arrow:storage bowMacro.id int 1 run scoreboard players get @s n_arrow.id

function n_arrow:zprivate/player/getbowdata with storage n_arrow:storage bowMacro

data modify storage n_arrow:storage checkMacro.prev_cbow set from storage n_arrow:storage CustomBowData

data remove storage n_arrow:storage checkMacro.prev_cbow.tag.Charged
data remove storage n_arrow:storage checkMacro.prev_cbow.tag.ChargedProjectiles
data remove storage n_arrow:storage checkMacro.prev_cbow.tag.Slot

execute if score @s n_arrow.cbow_offhand matches 0 run data modify storage n_arrow:storage checkMacro.current_cbow set from entity @s SelectedItem
execute if score @s n_arrow.cbow_offhand matches 1 run data modify storage n_arrow:storage checkMacro.current_cbow set from entity @s Inventory[{Slot:-106b}]

data remove storage n_arrow:storage checkMacro.current_cbow.tag.Charged
data remove storage n_arrow:storage checkMacro.current_cbow.tag.ChargedProjectiles
data remove storage n_arrow:storage checkMacro.current_cbow.tag.Slot

scoreboard players set #valid n_arrow.temp 1
execute store success score #valid n_arrow.temp run data modify storage n_arrow:storage checkMacro.prev_cbow set from storage n_arrow:storage checkMacro.current_cbow

execute if score #valid n_arrow.temp matches 0 run function n_arrow:zprivate/player/crossbow/valid_load
execute if score #valid n_arrow.temp matches 1 run function #n_arrow:zprivate/end_pull_cbow