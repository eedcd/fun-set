# 清除 title
title @a[x=0] clear
title @a[x=0] subtitle {"text":""}

# 清理 MVP 标签
tag @a[x=0] remove pvp_mvp

# 结束游戏
gamemode adventure @a[x=0]
execute as @a[x=0] run attribute @s minecraft:attack_damage base set 0
kill @a[x=0]
kill @a[x=0]
gamerule pvp false
scoreboard objectives setdisplay sidebar