# 获胜音效
execute as @a[x=0] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1

# 结算MVP
tag @a[x=0] remove lp.mvp
scoreboard players set mvp lp.temp 0
execute as @a[x=0,tag=lp.winner] run scoreboard players operation mvp lp.temp > @s lp.kill
execute if score mvp lp.temp matches 1.. as @a[x=0,tag=lp.winner] if score @s lp.kill = mvp lp.temp run tag @s add lp.mvp

# 关闭记分板侧栏
scoreboard objectives setdisplay sidebar

# 清理事件计时器与属性/效果
scoreboard players set arrow_timer lp.game 0
scoreboard players set thunder_n lp.game 0
scoreboard players set item_boost lp.game 0
effect clear @a[x=0]
