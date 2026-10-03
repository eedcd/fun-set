# 给与玩家随机30s效果
execute store result score eff lp.temp run random value 0..8
execute if score eff lp.temp matches 0 run effect give @a[x=0,gamemode=survival] minecraft:night_vision 30 0 true
execute if score eff lp.temp matches 1 run effect give @a[x=0,gamemode=survival] minecraft:speed 30 1 true
execute if score eff lp.temp matches 2 run effect give @a[x=0,gamemode=survival] minecraft:jump_boost 30 1 true
execute if score eff lp.temp matches 3 run effect give @a[x=0,gamemode=survival] minecraft:slowness 30 1 true
execute if score eff lp.temp matches 4 run effect give @a[x=0,gamemode=survival] minecraft:fire_resistance 30 0 true
execute if score eff lp.temp matches 5 run effect give @a[x=0,gamemode=survival] minecraft:poison 30 0 true
execute if score eff lp.temp matches 6 run effect give @a[x=0,gamemode=survival] minecraft:strength 30 1 true
execute if score eff lp.temp matches 7 run effect give @a[x=0,gamemode=survival] minecraft:invisibility 30 0 true
execute if score eff lp.temp matches 8 run effect give @a[x=0,gamemode=survival] minecraft:luck 30 0 true
