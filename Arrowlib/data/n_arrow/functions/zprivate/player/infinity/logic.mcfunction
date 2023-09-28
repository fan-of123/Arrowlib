data modify storage n_arrow:storage tempMacro set value {id:-1,slot:1,item:"",tag:"",count:0}

execute store result storage n_arrow:storage tempMacro.id int 1 run scoreboard players get @s n_arrow.id
execute store result storage n_arrow:storage tempMacro.slot int 1 store result score #slot n_arrow.temp run data get storage n_arrow:storage CustomArrowData.Slot

execute if entity @s[gamemode=!creative] if data storage n_arrow:storage {CustomArrowData:{tag:{n_arrow:{consume_infinity:1b}}}} if score #slot n_arrow.temp matches -106 run item modify entity @s weapon.offhand n_arrow:count-1
execute if entity @s[gamemode=!creative] if score #slot n_arrow.temp matches 0..36 if data storage n_arrow:storage {CustomArrowData:{tag:{n_arrow:{consume_infinity:1b}}}} run function n_arrow:zprivate/player/infinity/remove_arrow with storage n_arrow:storage tempMacro
