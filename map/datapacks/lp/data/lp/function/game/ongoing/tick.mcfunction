scoreboard players add time lp.game 1
scoreboard players operation sec lp.temp = time lp.game
scoreboard players operation min lp.temp = time lp.game
scoreboard players operation sec lp.temp %= 1200 lp.temp
scoreboard players operation sec lp.temp /= 20 lp.temp
scoreboard players operation min lp.temp /= 1200 lp.temp
execute store result storage lp:temp sec int 1 run scoreboard players get sec lp.temp
execute store result storage lp:temp min int 1 run scoreboard players get min lp.temp
scoreboard players set last_player lp.statistics 0
execute as @a[x=0,gamemode=survival] run scoreboard players add last_player lp.statistics 1
execute store result storage lp:temp ltp int 1 run scoreboard players get last_player lp.statistics

# 事件
function lp:game/ongoing/event/tick

# 下一事件倒计时
scoreboard players operation ess lp.temp = event_timer lp.game
scoreboard players operation emm lp.temp = event_timer lp.game
scoreboard players operation ess lp.temp /= 20 lp.temp
scoreboard players operation emm lp.temp /= 1200 lp.temp
scoreboard players operation ess lp.temp %= 60 lp.temp
execute store result storage lp:temp ess int 1 run scoreboard players get ess lp.temp
execute store result storage lp:temp emm int 1 run scoreboard players get emm lp.temp
data modify storage lp:temp evn set from storage lp:event name

function lp:game/ongoing/macro/set_display_scoreboard with storage lp:temp

# 胜利判定
function lp:game/end/win_check

# 随机掉物
execute if score random_interval lp.game matches 1.. run function lp:game/ongoing/drop_tick

# 图腾
execute as @a[x=0,gamemode=survival] at @s if entity @s[y=34,dy=-1000000] unless items entity @s weapon.mainhand minecraft:totem_of_undying unless items entity @s weapon.offhand minecraft:totem_of_undying run damage @s 100000 minecraft:out_of_world
execute as @a[x=0,gamemode=survival] at @s if entity @s[y=34,dy=-1000000] if items entity @s weapon.mainhand minecraft:totem_of_undying run function lp:game/ongoing/macro/totem_save
execute as @a[x=0,gamemode=survival] at @s if entity @s[y=34,dy=-1000000] if items entity @s weapon.offhand minecraft:totem_of_undying run function lp:game/ongoing/macro/totem_save