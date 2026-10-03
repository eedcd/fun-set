advancement revoke @s only lp:prk
execute if score @s lp.player_status matches 0 run return run function lp:lobby/prepare
execute if score @s lp.player_status matches 1 run function lp:lobby/cancel_prepare