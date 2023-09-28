$summon arrow ~ ~ ~ $(nbt)
execute as @e[tag=n_arrow.temp_passenger] run function n_arrow:zprivate/arrows/pickup/as_riders
execute summon marker run function n_arrow:zprivate/arrows/pickup/init_as