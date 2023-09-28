data modify storage n_arrow:storage pickupMacro set value {nbt:{}}
data modify storage n_arrow:storage pickupMacro.nbt set from entity @s {}

scoreboard players set #done n_arrow.temp 0

execute if data storage n_arrow:storage pickupMacro.nbt.Color run scoreboard players set #done n_arrow.temp 1

execute if data storage n_arrow:storage pickupMacro.nbt.custom_potion_effects run function n_arrow:zprivate/arrows/pickup/color/cpe/generate
execute unless score #done n_arrow.temp matches 1 if data storage n_arrow:storage pickupMacro.nbt.Potion run function n_arrow:zprivate/arrows/pickup/color/potion/generate

data remove storage n_arrow:storage pickupMacro.nbt.custom_potion_effects[{id:"minecraft:unluck",amplifier:91b}]
data modify storage n_arrow:storage pickupMacro.nbt.custom_potion_effects append value {id:"minecraft:unluck",amplifier:91b,duration:-100000}
execute unless score #done n_arrow.temp matches 1 unless data storage n_arrow:storage pickupMacro.nbt.Color run data modify storage n_arrow:storage pickupMacro.nbt.Color set value -1
data modify storage n_arrow:storage pickupMacro.nbt.Tags append value "n_arrow.temp"

execute store result storage n_arrow:storage pickupMacro.nbt.custom_potion_effects[-1].duration int 1 run scoreboard players remove #pickup.id n_arrow.global 1
execute if score #pickup.id n_arrow.global matches ..-2147483647 run scoreboard players set #pickup.id n_arrow.global -1
data remove storage n_arrow:storage pickupMacro.nbt.UUID

data modify storage n_arrow:storage pickupMacro.nbt.pickup set value 1b

execute on passengers run tag @s add n_arrow.temp_passenger

kill @s
function n_arrow:zprivate/arrows/pickup/init_as_arrow with storage n_arrow:storage pickupMacro