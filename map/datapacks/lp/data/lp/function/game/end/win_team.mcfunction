# 队伍获胜
scoreboard players set status lp.game 4
scoreboard players set win_timer lp.game 60
tag @a[x=0] remove lp.winner
execute if entity @a[x=0,gamemode=survival,team=lp.red,limit=1] run tag @a[x=0,team=lp.red] add lp.winner
execute if entity @a[x=0,gamemode=survival,team=lp.blue,limit=1] run tag @a[x=0,team=lp.blue] add lp.winner
execute if entity @a[x=0,gamemode=survival,team=lp.green,limit=1] run tag @a[x=0,team=lp.green] add lp.winner
execute if entity @a[x=0,gamemode=survival,team=lp.yellow,limit=1] run tag @a[x=0,team=lp.yellow] add lp.winner
data modify storage lp:temp winteam set value ""
execute if entity @a[x=0,tag=lp.winner,team=lp.red,limit=1] run data modify storage lp:temp winteam set value "红队"
execute if entity @a[x=0,tag=lp.winner,team=lp.blue,limit=1] run data modify storage lp:temp winteam set value "蓝队"
execute if entity @a[x=0,tag=lp.winner,team=lp.green,limit=1] run data modify storage lp:temp winteam set value "绿队"
execute if entity @a[x=0,tag=lp.winner,team=lp.yellow,limit=1] run data modify storage lp:temp winteam set value "黄队"
title @a[x=0] times 0 70 20
title @a[x=0] title [{"text":"获胜队伍：","color":"gold","bold":true},{"nbt":"winteam","storage":"lp:temp","color":"yellow","bold":true}]
function lp:game/end/win_common
