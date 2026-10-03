$tellraw @a[x=0] [{"text":"[事件] ","color":"red","bold":true},{"text":"$(name)","color":"yellow","bold":true}]

function lp:game/ongoing/event/trigger

execute if score event_stage lp.game matches ..2 run scoreboard players add event_stage lp.game 1

scoreboard players operation event_timer lp.game = event_interval lp.game

function lp:game/ongoing/event/pick_next