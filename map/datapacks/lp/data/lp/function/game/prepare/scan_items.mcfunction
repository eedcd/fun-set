# 扫预生成物品，容器列从 -462 起，y=147 z=1
# init 时调用，开局缺缓存会再补扫
data modify storage lp:presummon_dict items set value []
data modify storage lp:temp x set value -462
function lp:game/prepare/scan_presummon_items with storage lp:temp
execute store result score presummon_items_length lp.game run data get storage lp:presummon_dict items
scoreboard players set b lp.temp 1
scoreboard players operation presummon_items_length lp.game -= b lp.temp
execute store result storage lp:game presummon_items_length int 1 run scoreboard players get presummon_items_length lp.game
