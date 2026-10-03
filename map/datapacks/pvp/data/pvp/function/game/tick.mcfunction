# 拉杆设置更新
function pvp:game/settings_tick

# 掉落物消失
execute store result score item_timer pvp.temp run stopwatch query pvp:items_hurt 20
execute if score item_timer pvp.temp matches 20.. as @e[x=0,type=minecraft:item] run damage @s 0.0005 minecraft:falling_block
execute if score item_timer pvp.temp matches 20.. run stopwatch restart pvp:items_hurt

# 掉落物拾取
execute if score pick_item pvp.settings matches 0 as @e[x=0,type=item] run data modify entity @s PickupDelay set value 32767

# 游戏开始判断
execute if score status pvp.game matches 0 run function pvp:game/prepare/start_check

# 游戏进行时
execute if score status pvp.game matches 1 run function pvp:game/ongoing/tick

# 准备时
execute if score status pvp.game matches 0 run function pvp:game/prepare/tick

# 虚空死亡
execute if score vd_mode pvp.settings matches 0 run execute as @a[x=0] at @s if entity @s[y=-5,dy=-1000000] run damage @s 999999 minecraft:out_of_world