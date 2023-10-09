scoreboard players operation #API.pull_cbow n_arrow.API = @s n_arrow.pull_cbow
scoreboard players operation #API.offhand n_arrow.API = @s n_arrow.cbow_offhand

scoreboard players set #cont n_arrow.temp 0
execute if entity @s[scores={n_arrow.cbow_offhand=0},tag=n_arrow.pull_cbow,predicate=!n_arrow:cbowmainhand] store success score #cont n_arrow.temp run function #n_arrow:zprivate/end_pull_cbow
execute if score #cont n_arrow.temp matches 1 run return 1

execute unless entity @s[tag=n_arrow.pull_cbow] run function #n_arrow:zprivate/end_pull_cbow
execute if entity @s[tag=n_arrow.pull_cbow] store success score #schedule_loop n_arrow.temp run function #n_arrow:zprivate/pull_tick_cbow