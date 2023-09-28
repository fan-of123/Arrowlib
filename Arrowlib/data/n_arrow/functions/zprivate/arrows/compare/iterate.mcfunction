$data remove storage n_arrow:storage tempClearList[$(clear)]

data remove storage n_arrow:storage newInv[0]
data modify storage n_arrow:storage clearMacro.clear set from storage n_arrow:storage newInv[0]
execute unless data storage n_arrow:storage {newInv:[]} run function n_arrow:zprivate/arrows/compare/iterate with storage n_arrow:storage clearMacro