execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[《春日影》]",color:"dark_purple",hover_event:{action:"show_text",value:{text:"放下一个音符盒并播放《春日影》 春日影期间附近的怪物和玩家无法移动并无法攻击"}}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_chunriying kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] summon block_display at @s run function kards:game/yongpaiku/fashu/chunriying/2
execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] summon block_display at @s run function kards:game/yongpaiku/fashu/chunriying/2
