scoreboard players set #continue n_arrow.temp 0
execute on origin if entity @s[tag=n_arrow.temp] run scoreboard players set #continue n_arrow.temp 1
execute if score #continue n_arrow.temp matches 1 run function #n_arrow:public/pre/custom_arrow_effects