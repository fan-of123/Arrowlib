execute if entity @s[scores={n_arrow.bow_offhand=0},tag=n_arrow.pullbow,predicate=!n_arrow:bowmainhand] store success score @s n_arrow.pullbow run function #n_arrow:zprivate/start_pulling

scoreboard players operation #API.pullbow n_arrow.API = @s n_arrow.pullbow
scoreboard players operation #API.infinity n_arrow.API = @s n_arrow.infinity
scoreboard players operation #API.offhand n_arrow.API = @s n_arrow.bow_offhand

execute unless entity @s[tag=n_arrow.pullbow] run function #n_arrow:zprivate/end_pull
execute if entity @s[tag=n_arrow.pullbow] store success score #schedule_loop n_arrow.temp run function #n_arrow:zprivate/pull_tick