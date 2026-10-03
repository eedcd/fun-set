$data modify storage lp:temp blk set from storage lp:presummon_dict map_blocks[$(mapp)][$(r)]
data modify storage lp:temp blk_id set from storage lp:temp blk.id
execute if data storage lp:temp blk{id:"minecraft:barrier"} run data modify storage lp:temp blk_id set value "minecraft:air"
execute if data storage lp:temp blk{id:"minecraft:lava_bucket"} run data modify storage lp:temp blk_id set value "minecraft:lava"
execute if data storage lp:temp blk{id:"minecraft:water_bucket"} run data modify storage lp:temp blk_id set value "minecraft:water"
execute if data storage lp:temp blk{id:"minecraft:powder_snow_bucket"} run data modify storage lp:temp blk_id set value "minecraft:powder_snow"
function lp:game/prepare/macro/pick_block_set with storage lp:temp
$execute if block $(ax) $(cy) $(az) #minecraft:buttons run function lp:game/prepare/macro/pick_block_set_button_floor with storage lp:temp
$execute if block $(ax) $(cy) $(az) #minecraft:piston_blocks run function lp:game/prepare/macro/pick_block_set_piston_up with storage lp:temp
