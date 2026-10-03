scoreboard players set time pvp.display 1
# $say $(min):$(sec)
$scoreboard players display name time pvp.display [{"text":"⏱ 已进行 ","color":"blue","bold":true},{"text":"$(min)","color":"gold","bold":true},{"text":"' ","color":"gray","bold":true},{"text":"$(sec)","color":"gold","bold":true},{"text":"''","color":"gray","bold":true}]