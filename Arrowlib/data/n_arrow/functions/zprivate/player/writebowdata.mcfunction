execute if score @s n_arrow.cbow_offhand matches 0 run data modify storage n_arrow:storage CustomBowData set from entity @s SelectedItem
execute if score @s n_arrow.cbow_offhand matches 1 run data modify storage n_arrow:storage CustomBowData set from entity @s Inventory[{Slot:-106b}]
$data modify storage n_arrow:storage playerGlobal[{id:$(id)}].data.customBow set from storage n_arrow:storage CustomBowData