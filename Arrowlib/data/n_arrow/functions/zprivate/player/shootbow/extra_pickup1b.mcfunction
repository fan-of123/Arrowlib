scoreboard players set #continue n_arrow.temp 0
execute on origin if entity @s[tag=n_arrow.temp] run scoreboard players set #continue n_arrow.temp 1
execute if score #continue n_arrow.temp matches 1 as @s[nbt={pickup:1b}] run function n_arrow:zprivate/arrows/pickup/init