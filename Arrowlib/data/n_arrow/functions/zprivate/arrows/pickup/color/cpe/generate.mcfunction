data modify storage n_arrow:storage tempList set from storage n_arrow:storage pickupMacro.nbt.custom_potion_effects
data modify storage n_arrow:storage colorMacro set value {id:""}
data modify storage n_arrow:storage colorMacro.id set from storage n_arrow:storage tempList[-1].id

scoreboard players set #mod n_arrow.temp 0
scoreboard players set #r n_arrow.int 0
scoreboard players set #g n_arrow.int 0
scoreboard players set #b n_arrow.int 0

function n_arrow:zprivate/arrows/pickup/color/cpe/loop with storage n_arrow:storage colorMacro

scoreboard players operation #r n_arrow.int /= #mod n_arrow.temp
scoreboard players operation #g n_arrow.int /= #mod n_arrow.temp
scoreboard players operation #b n_arrow.int /= #mod n_arrow.temp

function n_arrow:zprivate/arrows/pickup/color/binary

scoreboard players set #done n_arrow.temp 1