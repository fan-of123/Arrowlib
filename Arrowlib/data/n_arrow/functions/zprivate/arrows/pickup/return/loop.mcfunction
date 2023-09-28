execute store result score #id n_arrow.temp run data get storage n_arrow:storage tempList[-1].tag.custom_potion_effects[{id:"minecraft:unluck",amplifier:91b}].duration
execute as @e[type=marker,tag=n_arrow.pickup_tracker,predicate=n_arrow:idmatch] run function n_arrow:zprivate/arrows/pickup/return/as_marker
data remove storage n_arrow:storage tempList[-1]
scoreboard players remove #loop n_arrow.temp 1
execute if score #loop n_arrow.temp matches 1.. run function n_arrow:zprivate/arrows/pickup/return/loop