execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[闪电轰鸣]",color:"dark_purple",hover_event:{action:"show_text",value:"向敌方所有玩家召唤闪电 附带1s眩晕"}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_shandianhongming kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
execute if entity @s[team=red] as @a[team=blue,gamemode=adventure] at @s run function kards:game/yongpaiku/fashu/shandianhongming/2
execute if entity @s[team=blue] as @a[team=red,gamemode=adventure] at @s run function kards:game/yongpaiku/fashu/shandianhongming/2
