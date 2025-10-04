function kards:game/yongpaiku/use_general/kard_general
scoreboard players operation @s kardCount -= #kard_chunriying kardCount
function kards:game/yongpaiku/xianjing/jiance/fashujiance
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] summon block_display at @s run function kards:game/yongpaiku/fashu/chunriying/2
execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] summon block_display at @s run function kards:game/yongpaiku/fashu/chunriying/2

title @s times 10t 2s 10t
execute if entity @s[team=red] run title @a title [{text:"[《春日影》]",color:"light_purple"},{text:"于",color:"gray"},{text:"蓝队",color:"blue"},{text:"放送~",color:"gray"}]
execute if entity @s[team=blue] run title @a title [{text:"[《春日影》]",color:"light_purple"},{text:"于",color:"gray"},{text:"红队",color:"red"},{text:"放送~",color:"gray"}]
title @a subtitle [{text:"事已至此 先听歌吧~",color:"green"}]