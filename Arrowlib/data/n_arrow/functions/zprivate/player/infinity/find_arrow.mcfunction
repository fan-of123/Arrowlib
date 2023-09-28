data modify storage n_arrow:storage CustomArrowData set value {id:"minecraft:arrow"}

data modify storage n_arrow:storage playerInventory set from entity @s Inventory
data remove storage n_arrow:storage tempIndex
$data modify storage n_arrow:storage tempIndex set from storage n_arrow:storage playerInventory[{Slot:$(selectedSlot)b}]
$data remove storage n_arrow:storage playerInventory[{Slot:$(selectedSlot)b}]
data modify storage n_arrow:storage tempIndex.Slot set value -107b
data modify storage n_arrow:storage playerInventory prepend from storage n_arrow:storage tempIndex
data remove storage n_arrow:storage tempIndex
data modify storage n_arrow:storage tempIndex set from storage n_arrow:storage playerInventory[{Slot:-106b}]
data remove storage n_arrow:storage playerInventory[{Slot:-106b}]
data modify storage n_arrow:storage playerInventory prepend from storage n_arrow:storage tempIndex

scoreboard players set #slot n_arrow.temp 999

data modify storage n_arrow:storage tempList set value []
data modify storage n_arrow:storage tempList prepend from storage n_arrow:storage playerInventory[{id:"minecraft:arrow"}]

data modify storage n_arrow:storage CustomArrowData set from storage n_arrow:storage tempList[0]

execute if data storage n_arrow:storage tempList[0] store result score #slot n_arrow.temp run data get storage n_arrow:storage tempList[0].Slot


data modify storage n_arrow:storage tempList set value []
data modify storage n_arrow:storage tempList prepend from storage n_arrow:storage playerInventory[{id:"minecraft:spectral_arrow"}]
execute if data storage n_arrow:storage tempList[0] store result score #slot_compare n_arrow.temp run data get storage n_arrow:storage tempList[0].Slot

execute if data storage n_arrow:storage tempList[0] if score #slot_compare n_arrow.temp < #slot n_arrow.temp if data storage n_arrow:storage tempList[0] run data modify storage n_arrow:storage CustomArrowData set from storage n_arrow:storage tempList[0]
execute if data storage n_arrow:storage tempList[0] run scoreboard players operation #slot n_arrow.temp < #slot_compare n_arrow.temp

data modify storage n_arrow:storage tempList set value []
data modify storage n_arrow:storage tempList prepend from storage n_arrow:storage playerInventory[{id:"minecraft:tipped_arrow"}]
execute if data storage n_arrow:storage tempList[0] store result score #slot_compare n_arrow.temp run data get storage n_arrow:storage tempList[0].Slot

execute if data storage n_arrow:storage tempList[0] if score #slot_compare n_arrow.temp < #slot n_arrow.temp if data storage n_arrow:storage tempList[0] run data modify storage n_arrow:storage CustomArrowData set from storage n_arrow:storage tempList[0]
execute if data storage n_arrow:storage tempList[0] run scoreboard players operation #slot n_arrow.temp < #slot_compare n_arrow.temp

$data modify storage n_arrow:storage CustomArrowData{Slot:-107b}.Slot set value $(selectedSlot)b

execute if data storage n_arrow:storage CustomArrowData.tag.n_arrow run function n_arrow:zprivate/player/infinity/logic