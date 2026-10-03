# 防具展示台 (-7, 2.5, -3)
summon minecraft:text_display -7 3 -3 {text:{text:"防具套装",color:"yellow",bold:true},billboard:"center",alignment:"center",background:0}
summon minecraft:item_display -7 2.5 -3 {item:{id:"minecraft:netherite_chestplate",count:1},billboard:"center",transformation:{right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.7f,1.0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
summon minecraft:interaction -7 2 -3 {Tags:["menu_item","menu_armor"],width:1.0f,height:1.0f}