scoreboard players set #holdingSlot n_arrow.temp 2
execute if predicate n_arrow:bowmainhand run scoreboard players set #holdingSlot n_arrow.temp 1

data modify storage n_arrow:storage tempMacro set value {id:1}
execute store result storage n_arrow:storage tempMacro.id int 1 run scoreboard players get @s n_arrow.id

scoreboard players set @s n_arrow.bow_offhand 0
execute if score #holdingSlot n_arrow.temp matches 2 run scoreboard players set @s n_arrow.bow_offhand 1

scoreboard players set @s n_arrow.infinity 0

execute if score #holdingSlot n_arrow.temp matches 1 if predicate n_arrow:infinity_mainhand run scoreboard players set @s n_arrow.infinity 1
execute if score #holdingSlot n_arrow.temp matches 2 if predicate n_arrow:infinity_offhand run scoreboard players set @s n_arrow.infinity 1

execute if score #holdingSlot n_arrow.temp matches 1 run data modify storage n_arrow:storage CustomBowData set from entity @s SelectedItem
execute if score #holdingSlot n_arrow.temp matches 2 run data modify storage n_arrow:storage CustomBowData set from entity @s Inventory[{Slot:-106b}]

function n_arrow:zprivate/player/infinity/copy_to_storage with storage n_arrow:storage tempMacro

scoreboard players operation #API.pullbow n_arrow.API = @s n_arrow.pullbow
scoreboard players operation #API.infinity n_arrow.API = @s n_arrow.infinity
scoreboard players operation #API.offhand n_arrow.API = @s n_arrow.bow_offhand

function n_arrow:zprivate/player/reward