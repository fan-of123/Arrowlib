data modify storage n_arrow:storage playerGlobal append value {data:{},id:-1}

execute store result storage n_arrow:storage playerGlobal[-1].id int 1 store result score @s n_arrow.id run scoreboard players add #ID n_arrow.global 1