scoreboard objectives add n_arrow.temp dummy
scoreboard objectives add n_arrow.int dummy
scoreboard objectives add n_arrow.const dummy
scoreboard objectives add n_arrow.bool dummy
scoreboard objectives add n_arrow.global dummy

scoreboard objectives add n_arrow.API dummy
scoreboard objectives add n_arrow.id dummy
scoreboard objectives add n_arrow.bow_offhand dummy
scoreboard objectives add n_arrow.infinity dummy
scoreboard objectives add n_arrow.pullbow dummy
scoreboard objectives add n_arrow.cbow_offhand dummy
scoreboard objectives add n_arrow.pull_cbow dummy
scoreboard objectives add n_arrow.usebow minecraft.used:minecraft.bow

data modify storage n_arrow:storage potionColor set value [{id:"minecraft:speed",rgb:{r:51,g:235,b:255}},{id:"minecraft:slowness",rgb:{r:139,g:175,b:224}},{id:"minecraft:haste",rgb:{r:217,g:192,b:67}},{id:"minecraft:mining_fatigue",rgb:{r:74,g:66,b:23}},{id:"minecraft:strength",rgb:{r:255,g:199,b:0}},{id:"minecraft:instant_health",rgb:{r:248,g:36,b:35}},{id:"minecraft:instant_damage",rgb:{r:169,g:101,b:106}},{id:"minecraft:jump_boost",rgb:{r:253,g:255,b:132}},{id:"minecraft:nausea",rgb:{r:85,g:29,b:74}},{id:"minecraft:regeneration",rgb:{r:205,g:92,b:171}},{id:"minecraft:resistance",rgb:{r:153,g:69,b:58}},{id:"minecraft:fire_resistance",rgb:{r:255,g:153,b:0}},{id:"minecraft:water_breathing",rgb:{r:152,g:218,b:192}},{id:"minecraft:invisibility",rgb:{r:246,g:246,b:246}},{id:"minecraft:blindness",rgb:{r:31,g:31,b:35}},{id:"minecraft:night_vision",rgb:{r:194,g:255,b:102}},{id:"minecraft:hunger",rgb:{r:88,g:118,b:83}},{id:"minecraft:weakness",rgb:{r:72,g:77,b:72}},{id:"minecraft:poison",rgb:{r:135,g:163,b:99}},{id:"minecraft:wither",rgb:{r:53,g:42,b:39}},{id:"minecraft:health_boost",rgb:{r:248,g:125,b:35}},{id:"minecraft:absorption",rgb:{r:37,g:82,b:165}},{id:"minecraft:saturation",rgb:{r:248,g:36,b:35}},{id:"minecraft:glowing",rgb:{r:148,g:160,b:97}},{id:"minecraft:levitation",rgb:{r:206,g:255,b:255}},{id:"minecraft:luck",rgb:{r:89,g:193,b:6}},{id:"minecraft:unluck",rgb:{r:192,g:164,b:77}},{id:"minecraft:slow_falling",rgb:{r:243,g:207,b:185}},{id:"minecraft:conduit_power",rgb:{r:29,g:194,b:209}},{id:"minecraft:dolphins_grace",rgb:{r:136,g:163,b:190}},{id:"minecraft:bad_omen",rgb:{r:11,g:97,b:56}},{id:"minecraft:hero_of_the_village",rgb:{r:68,g:255,b:68}},{id:"minecraft:darkness",rgb:{r:41,g:39,b:33}},{id:"minecraft:turtle_master",rgb:{r:139,g:131,b:227}},{id:"minecraft:empty",rgb:{r:248,g:0,b:248}},{id:"minecraft:water",rgb:{r:56,g:93,b:198}}]

data modify storage n_arrow:storage scoreboardTransfers set value []
data modify storage n_arrow:storage scoreboardTransfersLoad set value []

schedule function n_arrow:zprivate/5s 1t