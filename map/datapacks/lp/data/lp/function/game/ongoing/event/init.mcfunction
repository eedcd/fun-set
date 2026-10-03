scoreboard players set event_stage lp.game 1
scoreboard players operation event_timer lp.game = event_interval lp.game
scoreboard players set item_boost lp.game 0
scoreboard players set boost_timer lp.game 0
scoreboard players set arrow_timer lp.game 0
scoreboard players set thunder_n lp.game 0
scoreboard players set thunder_tick lp.game 0
scoreboard players set letsgo_timer lp.game -1
function lp:game/ongoing/event/pick_next