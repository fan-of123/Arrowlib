#function n_arrow:zprivate/arrows/pickup/color/grab with storage n_arrow:storage colorMacro

execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:empty"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:empty"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:water"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:water"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:awkward"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:water"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:mundane"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:water"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:swiftness"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:speed"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:strong_swiftness"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:speed"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_swiftness"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:speed"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:slowness"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:slowness"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_slowness"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:slowness"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:strong_slowness"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:slowness"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:strength"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:strength"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_strength"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:strength"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:strong_strength"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:strength"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:weakness"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:weakness"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_weakness"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:weakness"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:healing"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:instant_health"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:strong_healing"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:instant_health"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:harming"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:instant_damage"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:strong_harming"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:instant_damage"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:leaping"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:jump_boost"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:strong_leaping"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:jump_boost"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_leaping"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:jump_boost"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:luck"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:luck"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:regeneration"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:regeneration"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_regeneration"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:regeneration"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:strong_regeneration"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:regeneration"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:poison"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:poison"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_poison"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:poison"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:strong_poison"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:poison"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:fire_resistance"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:fire_resistance"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_fire_resistance"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:fire_resistance"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:water_breathing"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:water_breathing"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_water_breathing"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:water_breathing"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:night_vision"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:night_vision"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_night_vision"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:night_vision"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:invisibility"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:invisibility"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_invisibility"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:invisibility"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:turtle_master"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:turtle_master"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_turtle_master"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:turtle_master"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:strong_turtle_master"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:turtle_master"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:slow_falling"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:slow_falling"}].rgb
execute if data storage n_arrow:storage {pickupMacro:{nbt:{Potion:"minecraft:long_slow_falling"}}} run data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"minecraft:slow_falling"}].rgb

execute store result score #r n_arrow.int run data get storage n_arrow:storage tempRGB.r
execute store result score #g n_arrow.int run data get storage n_arrow:storage tempRGB.g
execute store result score #b n_arrow.int run data get storage n_arrow:storage tempRGB.b

function n_arrow:zprivate/arrows/pickup/color/binary

scoreboard players set #done n_arrow.temp 1