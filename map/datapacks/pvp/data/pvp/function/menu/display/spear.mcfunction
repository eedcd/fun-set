# 长矛 (-1, 2.5, -3)
summon minecraft:text_display -1 3 -3 {text:{text:"长矛",color:"yellow",bold:true},billboard:"center",alignment:"center",background:0}
summon minecraft:item_display -1 2.5 -3 {item:{id:"minecraft:netherite_spear",count:1},billboard:"center",transformation:{right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.7f,0.7f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
summon minecraft:interaction -1 2 -3 {Tags:["menu_item","menu_spear"],width:1.0f,height:1.0f}