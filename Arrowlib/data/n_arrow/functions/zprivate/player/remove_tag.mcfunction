data modify storage n_arrow:storage bowMacro set value {id:-1}
execute store result storage n_arrow:storage bowMacro.id int 1 run scoreboard players get @s n_arrow.id

function n_arrow:zprivate/player/getbowdata with storage n_arrow:storage bowMacro

tag @s remove n_arrow.pullbow