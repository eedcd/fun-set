# 末影珍珠+图腾 (3, 2.5, -3)
summon minecraft:text_display 3 3 -3 {text:{text:"末影珍珠",color:"yellow",bold:true},billboard:"center",alignment:"center",background:0}
summon minecraft:item_display 3 2.5 -3 {item:{id:"minecraft:ender_pearl",count:1},billboard:"center",transformation:{right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.7f,0.7f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
summon minecraft:interaction 3 2 -3 {Tags:["menu_item","menu_ender_pearl"],width:1.0f,height:1.0f}