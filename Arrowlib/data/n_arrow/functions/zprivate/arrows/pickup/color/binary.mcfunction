scoreboard players set #bit0 n_arrow.temp 0
scoreboard players set #bit1 n_arrow.temp 0
scoreboard players set #bit2 n_arrow.temp 0
scoreboard players set #bit3 n_arrow.temp 0
scoreboard players set #bit4 n_arrow.temp 0
scoreboard players set #bit5 n_arrow.temp 0
scoreboard players set #bit6 n_arrow.temp 0
scoreboard players set #bit7 n_arrow.temp 0
scoreboard players set #bit8 n_arrow.temp 0
scoreboard players set #bit9 n_arrow.temp 0
scoreboard players set #bit10 n_arrow.temp 0
scoreboard players set #bit11 n_arrow.temp 0
scoreboard players set #bit12 n_arrow.temp 0
scoreboard players set #bit13 n_arrow.temp 0
scoreboard players set #bit14 n_arrow.temp 0
scoreboard players set #bit15 n_arrow.temp 0
scoreboard players set #bit16 n_arrow.temp 0
scoreboard players set #bit17 n_arrow.temp 0
scoreboard players set #bit18 n_arrow.temp 0
scoreboard players set #bit19 n_arrow.temp 0
scoreboard players set #bit20 n_arrow.temp 0
scoreboard players set #bit21 n_arrow.temp 0
scoreboard players set #bit22 n_arrow.temp 0
scoreboard players set #bit23 n_arrow.temp 0

execute store success score #bit23 n_arrow.temp if score #r n_arrow.int matches 128.. run scoreboard players remove #r n_arrow.int 128
execute store success score #bit22 n_arrow.temp if score #r n_arrow.int matches 64.. run scoreboard players remove #r n_arrow.int 64
execute store success score #bit21 n_arrow.temp if score #r n_arrow.int matches 32.. run scoreboard players remove #r n_arrow.int 32
execute store success score #bit20 n_arrow.temp if score #r n_arrow.int matches 16.. run scoreboard players remove #r n_arrow.int 16
execute store success score #bit19 n_arrow.temp if score #r n_arrow.int matches 8.. run scoreboard players remove #r n_arrow.int 8
execute store success score #bit18 n_arrow.temp if score #r n_arrow.int matches 4.. run scoreboard players remove #r n_arrow.int 4
execute store success score #bit17 n_arrow.temp if score #r n_arrow.int matches 2.. run scoreboard players remove #r n_arrow.int 2
execute store success score #bit16 n_arrow.temp if score #r n_arrow.int matches 1.. run scoreboard players remove #r n_arrow.int 1

execute store success score #bit15 n_arrow.temp if score #g n_arrow.int matches 128.. run scoreboard players remove #g n_arrow.int 128
execute store success score #bit14 n_arrow.temp if score #g n_arrow.int matches 64.. run scoreboard players remove #g n_arrow.int 64
execute store success score #bit13 n_arrow.temp if score #g n_arrow.int matches 32.. run scoreboard players remove #g n_arrow.int 32
execute store success score #bit12 n_arrow.temp if score #g n_arrow.int matches 16.. run scoreboard players remove #g n_arrow.int 16
execute store success score #bit11 n_arrow.temp if score #g n_arrow.int matches 8.. run scoreboard players remove #g n_arrow.int 8
execute store success score #bit10 n_arrow.temp if score #g n_arrow.int matches 4.. run scoreboard players remove #g n_arrow.int 4
execute store success score #bit9 n_arrow.temp if score #g n_arrow.int matches 2.. run scoreboard players remove #g n_arrow.int 2
execute store success score #bit8 n_arrow.temp if score #g n_arrow.int matches 1.. run scoreboard players remove #g n_arrow.int 1

execute store success score #bit7 n_arrow.temp if score #b n_arrow.int matches 128.. run scoreboard players remove #b n_arrow.int 128
execute store success score #bit6 n_arrow.temp if score #b n_arrow.int matches 64.. run scoreboard players remove #b n_arrow.int 64
execute store success score #bit5 n_arrow.temp if score #b n_arrow.int matches 32.. run scoreboard players remove #b n_arrow.int 32
execute store success score #bit4 n_arrow.temp if score #b n_arrow.int matches 16.. run scoreboard players remove #b n_arrow.int 16
execute store success score #bit3 n_arrow.temp if score #b n_arrow.int matches 8.. run scoreboard players remove #b n_arrow.int 8
execute store success score #bit2 n_arrow.temp if score #b n_arrow.int matches 4.. run scoreboard players remove #b n_arrow.int 4
execute store success score #bit1 n_arrow.temp if score #b n_arrow.int matches 2.. run scoreboard players remove #b n_arrow.int 2
execute store success score #bit0 n_arrow.temp if score #b n_arrow.int matches 1.. run scoreboard players remove #b n_arrow.int 1

scoreboard players set #color n_arrow.temp 0
execute if score #bit0 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 1
execute if score #bit1 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 2
execute if score #bit2 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 4
execute if score #bit3 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 8
execute if score #bit4 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 16
execute if score #bit5 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 32
execute if score #bit6 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 64
execute if score #bit7 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 128
execute if score #bit8 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 256
execute if score #bit9 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 512
execute if score #bit10 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 1024
execute if score #bit11 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 2048
execute if score #bit12 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 4096
execute if score #bit13 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 8192
execute if score #bit14 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 16384
execute if score #bit15 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 32768
execute if score #bit16 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 65536
execute if score #bit17 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 131072
execute if score #bit18 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 262144
execute if score #bit19 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 524288
execute if score #bit20 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 1048576
execute if score #bit21 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 2097152
execute if score #bit22 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 4194304
execute if score #bit23 n_arrow.temp matches 1 run scoreboard players add #color n_arrow.temp 8388608

execute store result storage n_arrow:storage pickupMacro.nbt.Color int 1 run scoreboard players get #color n_arrow.temp