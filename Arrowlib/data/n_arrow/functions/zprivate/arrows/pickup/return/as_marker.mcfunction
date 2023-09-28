data modify storage n_arrow:storage giveMacro set value {id:"",tag:"",item:{}}
data modify storage n_arrow:storage CustomArrowData set from entity @s data.n_arrow.CustomArrowData
kill @s
data modify storage n_arrow:storage giveMacro.id set from storage n_arrow:storage CustomArrowData.id
data modify storage n_arrow:storage giveMacro.tag set from storage n_arrow:storage CustomArrowData.tag
data modify storage n_arrow:storage giveMacro.item set from storage n_arrow:storage CustomArrowData
data remove storage n_arrow:storage giveMacro.item.Slot
data remove storage n_arrow:storage giveMacro.item.Count
execute as @a[tag=n_arrow.temp] run function n_arrow:zprivate/arrows/pickup/return/give with storage n_arrow:storage giveMacro