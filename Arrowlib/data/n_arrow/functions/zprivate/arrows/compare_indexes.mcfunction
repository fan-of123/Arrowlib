scoreboard players set #count_old n_arrow.temp 0
scoreboard players set #count_new n_arrow.temp 0

execute store result score #count_old n_arrow.temp store result score #count_subtract n_arrow.temp run data get storage n_arrow:storage tempClearList[0].Count
$execute store result score #count_new n_arrow.temp run data get storage n_arrow:storage currentInv[{Slot:$(slot)b}].Count

scoreboard players operation #count_subtract n_arrow.temp -= #count_new n_arrow.temp
execute if score #count_old n_arrow.temp > #count_new n_arrow.temp if score #count_subtract n_arrow.temp matches 1 run scoreboard players set #validChange n_arrow.temp 1