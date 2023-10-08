advancement revoke @s only n_arrow:shoot_bow

scoreboard players operation #API.pullbow n_arrow.API = @s n_arrow.pullbow
scoreboard players operation #API.infinity n_arrow.API = @s n_arrow.infinity
scoreboard players operation #API.offhand n_arrow.API = @s n_arrow.bow_offhand

scoreboard players set @s n_arrow.usebow 0
scoreboard players set @s n_arrow.pullbow 0
tag @s remove n_arrow.pullbow

data modify storage n_arrow:storage bowMacro set value {id:-1}
execute store result storage n_arrow:storage bowMacro.id int 1 run scoreboard players get @s n_arrow.id

function n_arrow:zprivate/player/getbowdata with storage n_arrow:storage bowMacro

data modify storage n_arrow:storage tempMacro set value {id:-1,slot:1,item:"",tag:"",count:0}
execute store result storage n_arrow:storage tempMacro.id int 1 run scoreboard players get @s n_arrow.id

execute if entity @s[gamemode=creative] run function n_arrow:zprivate/player/infinity/find_arrow_init
execute if entity @s[gamemode=!creative,scores={n_arrow.infinity=1},tag=!n_arrow.validChange] run function n_arrow:zprivate/player/infinity/find_arrow_init
execute if entity @s[gamemode=!creative,tag=n_arrow.validChange] run function n_arrow:zprivate/arrows/firedcustom/main with storage n_arrow:storage tempMacro

scoreboard players set #API.normal_arrow n_arrow.API 0
execute if data storage n_arrow:storage {CustomArrowData:{id:"minecraft:arrow"}} unless data storage n_arrow:storage CustomArrowData.tag run scoreboard players set #API.normal_arrow n_arrow.API 1

scoreboard players operation #infinity n_arrow.temp = @s n_arrow.infinity

tag @s add n_arrow.temp

function #n_arrow:public/pre/shoot_bow

execute as @e[type=#n_arrow:customproj,tag=!n_arrow.scanned] at @s run function n_arrow:zprivate/player/shootbow/extra_effects_pre

execute if data storage n_arrow:storage {CustomArrowData:{tag:{n_arrow:{pickup_item:1b}}}} as @e[type=#n_arrow:customproj,type=!minecraft:firework_rocket,type=!minecraft:spectral_arrow,tag=!n_arrow.scanned] at @s run function n_arrow:zprivate/player/shootbow/extra_pickup1b

execute if data storage n_arrow:storage {CustomArrowData:{tag:{n_arrow:{pickup_item:1b,consume_infinity:1b}}}} if entity @s[gamemode=!creative,scores={n_arrow.infinity=1},tag=!n_arrow.validChange] as @e[type=#n_arrow:customproj,type=!minecraft:firework_rocket,type=!minecraft:spectral_arrow,tag=!n_arrow.scanned,tag=!n_arrow.API.ignore] at @s run function n_arrow:zprivate/player/shootbow/extra_pickup2b

execute if entity @s[gamemode=!creative,tag=!n_arrow.validChange,scores={n_arrow.infinity=1}] if data storage n_arrow:storage {CustomArrowData:{tag:{n_arrow:{consume_infinity:1b}}}} unless data storage n_arrow:storage {CustomArrowData:{tag:{n_arrow:{pickup_item:1b}}}} as @e[type=#n_arrow:customproj,type=!minecraft:firework_rocket,type=!minecraft:spectral_arrow,tag=!n_arrow.scanned,tag=!n_arrow.API.ignore] at @s run function n_arrow:zprivate/player/shootbow/extra_pickup1b_remove

execute as @e[type=#n_arrow:customproj,tag=!n_arrow.scanned] at @s run function n_arrow:zprivate/player/shootbow/extra_effects_post

function #n_arrow:public/post/shoot_bow

tag @s remove n_arrow.temp

tag @e[type=#n_arrow:customproj] add n_arrow.scanned

function #n_arrow:zprivate/end_pull