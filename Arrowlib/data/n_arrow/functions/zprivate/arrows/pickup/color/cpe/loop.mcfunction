$data modify storage n_arrow:storage tempRGB set from storage n_arrow:storage potionColor[{id:"$(id)"}].rgb

execute store result score #mult n_arrow.temp run data get storage n_arrow:storage tempList[-1].amplifier
scoreboard players add #mult n_arrow.temp 1
scoreboard players operation #mod n_arrow.temp += #mult n_arrow.temp

execute store result score #r n_arrow.temp run data get storage n_arrow:storage tempRGB.r
execute store result score #g n_arrow.temp run data get storage n_arrow:storage tempRGB.g
execute store result score #b n_arrow.temp run data get storage n_arrow:storage tempRGB.b

scoreboard players operation #r n_arrow.temp *= #mult n_arrow.temp
scoreboard players operation #g n_arrow.temp *= #mult n_arrow.temp
scoreboard players operation #b n_arrow.temp *= #mult n_arrow.temp

scoreboard players operation #r n_arrow.int += #r n_arrow.temp
scoreboard players operation #g n_arrow.int += #g n_arrow.temp
scoreboard players operation #b n_arrow.int += #b n_arrow.temp

data remove storage n_arrow:storage tempList[-1]
data modify storage n_arrow:storage colorMacro.id set from storage n_arrow:storage tempList[-1].id
execute if data storage n_arrow:storage tempList[0] run function n_arrow:zprivate/arrows/pickup/color/cpe/loop with storage n_arrow:storage colorMacro