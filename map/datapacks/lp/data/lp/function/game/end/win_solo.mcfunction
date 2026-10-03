# 个人获胜
scoreboard players set status lp.game 4
scoreboard players set win_timer lp.game 60
tag @a[x=0] remove lp.winner
tag @a[x=0,gamemode=survival,limit=1] add lp.winner
tag @a[x=0,gamemode=survival,team=lp.none,limit=1] add lp.winner
execute as @a[x=0,tag=lp.winner,limit=1] run team leave @s
title @a[x=0] times 0 70 20
title @a[x=0] title [{"text":"获胜者：","color":"gold","bold":true},{"selector":"@a[tag=lp.winner,limit=1]","color":"yellow","bold":true}]
execute as @a[x=0,tag=lp.winner,limit=1] run team join lp.none
function lp:game/end/win_common
