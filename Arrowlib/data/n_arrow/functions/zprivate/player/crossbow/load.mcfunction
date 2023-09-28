advancement revoke @s only n_arrow:load_crossbow

data modify storage n_arrow:storage bowMacro set value {id:-1}
execute store result storage n_arrow:storage bowMacro.id int 1 run scoreboard players get @s n_arrow.id

function n_arrow:zprivate/player/getbowdata with storage n_arrow:storage bowMacro

scoreboard players operation #API.pull_cbow n_arrow.API = @s n_arrow.pull_cbow
scoreboard players operation #API.offhand n_arrow.API = @s n_arrow.cbow_offhand

function #n_arrow:public/load_crossbow
function #n_arrow:zprivate/end_pull_cbow