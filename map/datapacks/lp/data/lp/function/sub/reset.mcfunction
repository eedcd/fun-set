time set noon
weather clear
worldborder set 29999984 0
worldborder center 0 0

kill @e[x=0,type=!minecraft:player]

scoreboard objectives remove lp.temp
scoreboard objectives remove lp.player_status
scoreboard objectives remove lp.statistics
scoreboard objectives remove lp.game
scoreboard objectives remove lp.display
scoreboard objectives remove lp.kill
bossbar remove lp:prepare
bossbar remove lp:init
team remove lp.red
team remove lp.yellow
team remove lp.green
team remove lp.blue
team remove lp.none

function lp:init

scoreboard players set status lp.game 0
scoreboard players set event_timer lp.game 1800
# 设置默认值：物品刷新间隔 40 tick、事件间隔 1800 tick
scoreboard players set random_interval lp.game 40
scoreboard players set event_interval lp.game 1800
scoreboard players set event_stage lp.game 1
scoreboard players set event_idx lp.game 0
scoreboard players set item_boost lp.game 0
scoreboard players set boost_timer lp.game 0
scoreboard players set arrow_timer lp.game 0
scoreboard players set letsgo_timer lp.game -1
scoreboard players set nightwave_timer lp.game 0
scoreboard players set win_timer lp.game 0
scoreboard players set time lp.game 0
scoreboard players set drop_timer lp.game 0
