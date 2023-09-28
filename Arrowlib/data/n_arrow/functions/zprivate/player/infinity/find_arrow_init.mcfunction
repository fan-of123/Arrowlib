data modify storage n_arrow:storage tempMacro set value {selectedSlot:-1}
execute store result storage n_arrow:storage tempMacro.selectedSlot int 1 run data get entity @s SelectedItemSlot
function n_arrow:zprivate/player/infinity/find_arrow with storage n_arrow:storage tempMacro