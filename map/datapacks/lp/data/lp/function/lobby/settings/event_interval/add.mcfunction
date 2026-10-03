playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1 1
scoreboard players add event_interval lp.game 100

function lp:lobby/settings/event_interval/refresh

# setblock -464 117 -10 minecraft:oak_wall_sign[facing=south]{id:"minecraft:sign",allow_op_features:1b,front_text:{color:"black",has_glowing_text:0b,messages:[[{color:"white",text:"100tick",click_event:{action:"run_command",command:"/function lp:lobby/settings/event_interval/add"}},{color:"red",text:"+",bold:1b}],"","",""]},back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]}} replace