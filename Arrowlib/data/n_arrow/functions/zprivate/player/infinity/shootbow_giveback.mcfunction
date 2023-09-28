data modify storage n_arrow:storage tempMacro.slot set from storage n_arrow:storage CustomArrowData.Slot
data modify storage n_arrow:storage tempMacro.item set from storage n_arrow:storage CustomArrowData.id
data modify storage n_arrow:storage tempMacro.tag set from storage n_arrow:storage CustomArrowData.tag
data modify storage n_arrow:storage tempMacro.count set from storage n_arrow:storage CustomArrowData.Count

execute store result score #slot n_arrow.temp run data get storage n_arrow:storage CustomArrowData.Slot

execute if score #slot n_arrow.temp matches -106 run function n_arrow:zprivate/player/infinity/give_arrow_offhand with storage n_arrow:storage tempMacro
execute if score #slot n_arrow.temp matches 0..36 run function n_arrow:zprivate/player/infinity/give_arrow with storage n_arrow:storage tempMacro