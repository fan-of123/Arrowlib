ride @s mount @e[type=#n_arrow:customproj,tag=n_arrow.temp,limit=1]
data modify entity @s data.n_arrow.CustomArrowData set from storage n_arrow:storage CustomArrowData
tag @s add n_arrow.pickup_tracker
scoreboard players operation @s n_arrow.id = #pickup.id n_arrow.global
tag @e[type=arrow,tag=n_arrow.temp] remove n_arrow.temp