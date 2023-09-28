$data modify storage n_arrow:storage oldInv set from storage n_arrow:storage playerGlobal[{id:$(id)}].data.Inventory
data modify storage n_arrow:storage tempClearList set from storage n_arrow:storage oldInv

data modify storage n_arrow:storage clearMacro set value {clear:{},slot:-1}
data modify storage n_arrow:storage clearMacro.clear set from storage n_arrow:storage newInv[0]

function n_arrow:zprivate/arrows/compare/iterate with storage n_arrow:storage clearMacro

scoreboard players set #validChange n_arrow.temp 0

data modify storage n_arrow:storage clearMacro.slot set from storage n_arrow:storage tempClearList[0].Slot
function n_arrow:zprivate/arrows/compare_indexes with storage n_arrow:storage clearMacro

$data modify storage n_arrow:storage playerGlobal[{id:$(id)}].data.Inventory set from storage n_arrow:storage currentInv

execute if score #validChange n_arrow.temp matches 0 run return 0

tag @s add n_arrow.validChange
schedule function n_arrow:zprivate/arrows/clear_tags 1t

$data modify storage n_arrow:storage playerGlobal[{id:$(id)}].data.firedCustomArrow set from storage n_arrow:storage tempClearList[0]