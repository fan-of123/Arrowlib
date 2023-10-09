scoreboard players set #valid n_arrow.temp 0
$execute if score @s n_arrow.cbow_offhand matches 0 if entity @s[nbt={SelectedItem:$(cbow)}] run function n_arrow:zprivate/player/crossbow/valid_load
$execute if score @s n_arrow.cbow_offhand matches 1 if entity @s[nbt={Inventory:[$(offhand)]}] run function n_arrow:zprivate/player/crossbow/valid_load
execute if score #valid n_arrow.temp matches 1 run return 1

function #n_arrow:zprivate/end_pull_cbow