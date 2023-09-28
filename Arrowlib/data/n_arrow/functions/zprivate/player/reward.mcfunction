advancement revoke @s only n_arrow:inv_change
data modify storage n_arrow:storage tempMacro set value {id:-1,selectedSlot:-1}
execute store result storage n_arrow:storage tempMacro.id int 1 run scoreboard players get @s n_arrow.id
execute store result storage n_arrow:storage tempMacro.selectedSlot int 1 run data get entity @s SelectedItemSlot

data modify storage n_arrow:storage playerInv set from entity @s Inventory
data modify storage n_arrow:storage newInv set value []
data modify storage n_arrow:storage newInv append from storage n_arrow:storage playerInv[{id:"minecraft:tipped_arrow"}]
data modify storage n_arrow:storage newInv append from storage n_arrow:storage playerInv[{id:"minecraft:arrow"}]
data modify storage n_arrow:storage newInv append from storage n_arrow:storage playerInv[{id:"minecraft:spectral_arrow"}]
#data remove storage n_arrow:storage tempSlot
#data modify storage n_arrow:storage tempSlot set from storage n_arrow:storage newInv[{Slot:-106b}]
#data remove storage n_arrow:storage newInv[{Slot:-106b}]
#execute if data storage n_arrow:storage tempSlot run data modify storage n_arrow:storage newInv prepend from storage n_arrow:storage tempSlot
data modify storage n_arrow:storage currentInv set from storage n_arrow:storage newInv
function n_arrow:zprivate/arrows/check with storage n_arrow:storage tempMacro