scoreboard players set #schedule_loop n_arrow.temp 0
execute as @a[scores={n_arrow.pull_cbow=1..}] run function n_arrow:zprivate/player/crossbow/pull_tick
execute if score #schedule_loop n_arrow.temp matches 1 run schedule function n_arrow:zprivate/player/crossbow/pull_schedule 1t