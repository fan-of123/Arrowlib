advancement revoke @s only n_arrow:shootcustomcrossbow

scoreboard players set #infinity n_arrow.temp 0

scoreboard players set #holdingSlot n_arrow.temp 2
execute if predicate n_arrow:shotfrommainhand run scoreboard players set #holdingSlot n_arrow.temp 1

execute if score #holdingSlot n_arrow.temp matches 1 run data modify storage n_arrow:storage CustomBowData set from entity @s SelectedItem
execute if score #holdingSlot n_arrow.temp matches 2 run data modify storage n_arrow:storage CustomBowData set from entity @s Inventory[{Slot:-106b}]

data modify storage n_arrow:storage CustomArrowData set from storage n_arrow:storage CustomBowData.tag.ChargedProjectiles[0]

tag @s add n_arrow.temp

function #n_arrow:public/pre/shoot_crossbow

execute as @e[type=#n_arrow:customproj,tag=!n_arrow.scanned] at @s run function n_arrow:zprivate/player/shootbow/extra_effects_pre

execute if data storage n_arrow:storage {CustomArrowData:{tag:{n_arrow:{pickup_item:1b}}}} as @e[type=#n_arrow:customproj,type=!minecraft:firework_rocket,type=!minecraft:spectral_arrow,tag=!n_arrow.scanned] at @s run function n_arrow:zprivate/player/shootbow/extra_pickup1b

execute as @e[type=#n_arrow:customproj,tag=!n_arrow.scanned] at @s run function n_arrow:zprivate/player/shootbow/extra_effects_post

function #n_arrow:public/post/shoot_crossbow

tag @s remove n_arrow.temp

tag @e[type=#n_arrow:customproj] add n_arrow.scanned