advancement revoke @s only n_arrow:pull_bow

execute unless score @s n_arrow.pullbow matches 1.. run function #n_arrow:zprivate/start_pulling

scoreboard players add @s n_arrow.pullbow 1
tag @s add n_arrow.pullbow
schedule function n_arrow:zprivate/player/pull_schedule 1t