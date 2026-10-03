execute if score init lp.temp matches 1 run return run function lp:game/prepare/init_stage_settings
execute if score init lp.temp matches 2 run return run function lp:game/prepare/init_stage_map

execute if score init lp.temp matches 3 unless score clearing lp.temp matches 1 run return run function lp:game/prepare/init_stage_clear
execute if score init lp.temp matches 4 run return run function lp:game/prepare/init_stage_build
