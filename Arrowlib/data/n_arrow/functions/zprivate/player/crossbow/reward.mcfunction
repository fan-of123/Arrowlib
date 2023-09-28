advancement revoke @s only n_arrow:pull_cbow

execute unless score @s n_arrow.pull_cbow matches 1.. run function #n_arrow:zprivate/start_pulling_cbow

scoreboard players add @s n_arrow.pull_cbow 1
tag @s add n_arrow.pull_cbow
schedule function n_arrow:zprivate/player/crossbow/pull_schedule 1t