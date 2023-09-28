#execute as @e[type=marker,tag=n_arrow.pickup_tracker,predicate=!n_arrow:riding_entity,sort=nearest] run function n_arrow:zprivate/arrows/pickup/despawned

data modify storage n_arrow:storage tempInv set from entity @s Inventory
data modify storage n_arrow:storage tempList set value []
data modify storage n_arrow:storage tempList prepend from storage n_arrow:storage tempInv[{tag:{custom_potion_effects:[{amplifier:91b,id:"minecraft:unluck"}]}}]
data remove storage n_arrow:storage tempInv[{tag:{custom_potion_effects:[{amplifier:91b,id:"minecraft:unluck"}]}}]
clear @s tipped_arrow{custom_potion_effects:[{amplifier:91b,id:"minecraft:unluck"}]}
execute store result score #loop n_arrow.temp if data storage n_arrow:storage tempList[]
tag @s add n_arrow.temp
function n_arrow:zprivate/arrows/pickup/return/loop
tag @s remove n_arrow.temp
advancement revoke @s only n_arrow:arrow_pickup