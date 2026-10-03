# 清除残留
kill @e[x=0,type=minecraft:item_display]
kill @e[x=0,type=minecraft:text_display]
kill @e[x=0,type=minecraft:block_display]
kill @e[x=0,type=minecraft:interaction]

# 生成所有展示台
function pvp:menu/display/armor
function pvp:menu/display/melee
function pvp:menu/display/mace
function pvp:menu/display/spear
function pvp:menu/display/bow
function pvp:menu/display/ender_pearl
function pvp:menu/display/supply
function pvp:menu/display/potions