scoreboard players set #done2 n_arrow.temp 0
data modify storage n_arrow:storage giveList set value []
$data modify storage n_arrow:storage giveList prepend from storage n_arrow:storage tempInv[$(item)]
data modify storage n_arrow:storage giveList prepend from storage n_arrow:storage giveList[{Slot:-106b}]

execute store result score #loop n_arrow.temp if data storage n_arrow:storage giveList[]

data modify storage n_arrow:storage listMacro set value {slot:-1}
execute if score #loop n_arrow.temp matches 1.. run function n_arrow:zprivate/arrows/pickup/return/loop2

execute if score #done2 n_arrow.temp matches 1 run return 1

$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:0b}] store success score #done2 n_arrow.temp run item replace entity @s container.0 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:1b}] store success score #done2 n_arrow.temp run item replace entity @s container.1 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:2b}] store success score #done2 n_arrow.temp run item replace entity @s container.2 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:3b}] store success score #done2 n_arrow.temp run item replace entity @s container.3 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:4b}] store success score #done2 n_arrow.temp run item replace entity @s container.4 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:5b}] store success score #done2 n_arrow.temp run item replace entity @s container.5 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:6b}] store success score #done2 n_arrow.temp run item replace entity @s container.6 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:7b}] store success score #done2 n_arrow.temp run item replace entity @s container.7 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:8b}] store success score #done2 n_arrow.temp run item replace entity @s container.8 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:9b}] store success score #done2 n_arrow.temp run item replace entity @s container.9 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:10b}] store success score #done2 n_arrow.temp run item replace entity @s container.10 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:11b}] store success score #done2 n_arrow.temp run item replace entity @s container.11 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:12b}] store success score #done2 n_arrow.temp run item replace entity @s container.12 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:13b}] store success score #done2 n_arrow.temp run item replace entity @s container.13 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:14b}] store success score #done2 n_arrow.temp run item replace entity @s container.14 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:15b}] store success score #done2 n_arrow.temp run item replace entity @s container.15 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:16b}] store success score #done2 n_arrow.temp run item replace entity @s container.16 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:17b}] store success score #done2 n_arrow.temp run item replace entity @s container.17 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:18b}] store success score #done2 n_arrow.temp run item replace entity @s container.18 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:19b}] store success score #done2 n_arrow.temp run item replace entity @s container.19 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:20b}] store success score #done2 n_arrow.temp run item replace entity @s container.20 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:21b}] store success score #done2 n_arrow.temp run item replace entity @s container.21 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:22b}] store success score #done2 n_arrow.temp run item replace entity @s container.22 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:23b}] store success score #done2 n_arrow.temp run item replace entity @s container.23 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:24b}] store success score #done2 n_arrow.temp run item replace entity @s container.24 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:25b}] store success score #done2 n_arrow.temp run item replace entity @s container.25 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:26b}] store success score #done2 n_arrow.temp run item replace entity @s container.26 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:27b}] store success score #done2 n_arrow.temp run item replace entity @s container.27 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:28b}] store success score #done2 n_arrow.temp run item replace entity @s container.28 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:29b}] store success score #done2 n_arrow.temp run item replace entity @s container.29 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:30b}] store success score #done2 n_arrow.temp run item replace entity @s container.30 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:31b}] store success score #done2 n_arrow.temp run item replace entity @s container.31 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:32b}] store success score #done2 n_arrow.temp run item replace entity @s container.32 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:33b}] store success score #done2 n_arrow.temp run item replace entity @s container.33 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:34b}] store success score #done2 n_arrow.temp run item replace entity @s container.34 with $(id)$(tag)
$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:35b}] store success score #done2 n_arrow.temp run item replace entity @s container.35 with $(id)$(tag)

$execute unless score #done2 n_arrow.temp matches 1 unless data storage n_arrow:storage tempInv[{Slot:35b}] store success score #done2 n_arrow.temp run give @s $(id)$(tag)