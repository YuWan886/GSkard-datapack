function kards:game/yongpaiku/use_general/kard_general
scoreboard players operation @s kardCount -= #kard_chunriying kardCount
function kards:game/yongpaiku/xianjing/jiance/fashujiance
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] summon block_display at @s run function kards:game/yongpaiku/fashu/chunriying/2
execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] summon block_display at @s run function kards:game/yongpaiku/fashu/chunriying/2

title @s times 10t 2s 10t
execute if entity @s[team=red] run title @a title [{translate: "kards.function.game.yongpaiku.fashu.chunriying.1.1", fallback: "[《春日影》]",color:"light_purple"},{translate: "kards.function.game.yongpaiku.fashu.chunriying.1.2", fallback: "于",color:"gray"},{translate: "kards.function.game.end.win.blue_win.2", fallback: "蓝队",color:"blue"},{translate: "kards.function.game.yongpaiku.fashu.chunriying.1.3", fallback: "放送~",color:"gray"}]
execute if entity @s[team=blue] run title @a title [{translate: "kards.function.game.yongpaiku.fashu.chunriying.1.1", fallback: "[《春日影》]",color:"light_purple"},{translate: "kards.function.game.yongpaiku.fashu.chunriying.1.2", fallback: "于",color:"gray"},{translate: "kards.function.game.end.win.red_win.1", fallback: "红队",color:"red"},{translate: "kards.function.game.yongpaiku.fashu.chunriying.1.3", fallback: "放送~",color:"gray"}]
title @a subtitle [{translate: "kards.function.game.yongpaiku.fashu.chunriying.1.4", fallback: "事已至此 先听歌吧~",color:"green"}]