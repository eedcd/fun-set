execute unless score event_interval lp.game matches 300.. run return run playsound block.note_block.bass ui @a ~ ~ ~ 1 1 1
playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1 1
execute if score event_interval lp.game matches 300.. run scoreboard players remove event_interval lp.game 100

function lp:lobby/settings/event_interval/refresh

# setblock -466 117 -10 minecraft:oak_wall_sign[facing=south]{id:"minecraft:sign",allow_op_features:1b,front_text:{color:"black",has_glowing_text:0b,messages:[[{color:"dark_blue",text:"-",bold:1b,click_event:{action:"run_command",command:"/function lp:lobby/settings/event_interval/minus"}},{color:"white",text:"100tick"}],"","",""]},back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]}} replace