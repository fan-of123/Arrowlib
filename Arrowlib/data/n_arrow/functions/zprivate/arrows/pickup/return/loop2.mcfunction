scoreboard players reset #slot n_arrow.temp
scoreboard players reset #count n_arrow.temp

execute store result storage n_arrow:storage listMacro.slot int 1 store result score #slot n_arrow.temp run data get storage n_arrow:storage giveList[0].Slot
execute store result score #count n_arrow.temp run data get storage n_arrow:storage giveList[0].Count

execute unless score #count n_arrow.temp matches 64.. if score #slot n_arrow.temp matches 0..36 store success score #done2 n_arrow.temp run function n_arrow:zprivate/arrows/pickup/return/increment with storage n_arrow:storage listMacro
execute unless score #count n_arrow.temp matches 64.. if score #slot n_arrow.temp matches -106 store success score #done2 n_arrow.temp run item modify entity @s weapon.offhand n_arrow:countadd1

scoreboard players remove #loop n_arrow.temp 1
data remove storage n_arrow:storage giveList[0]
execute if score #loop n_arrow.temp matches 1.. unless score #done2 n_arrow.temp matches 1 run function n_arrow:zprivate/arrows/pickup/return/loop2