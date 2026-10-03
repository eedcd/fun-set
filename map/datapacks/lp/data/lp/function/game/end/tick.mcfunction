# 结算阶段
scoreboard players remove win_timer lp.game 1
effect give @a[x=0] minecraft:resistance 1 255 true

# 烟花
scoreboard players operation fw lp.temp = win_timer lp.game
scoreboard players operation fw lp.temp %= 5 lp.temp
execute if score fw lp.temp matches 0 at @a[x=0,tag=lp.winner] run summon minecraft:firework_rocket ~ ~2 ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"large_ball",has_twinkle:1b,has_trail:1b,colors:[I;16733525,16777045,5635925],fade_colors:[I;16777215]}]}}}}

# MVP展示
execute if score mvp lp.temp matches 1.. run title @a[x=0] actionbar [{"text":"★ MVP: ","color":"gold","bold":true},{"selector":"@a[tag=lp.mvp,limit=1]","color":"yellow","bold":true},{"text":"  击杀数 ","color":"gray"},{"score":{"name":"mvp","objective":"lp.temp"},"color":"red","bold":true}]

# 返回大厅
execute if score win_timer lp.game matches ..0 run function lp:game/end/reset_players
