execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[盈余之力]",color:"dark_purple",hover_event:{action:"show_text",value:"消耗你所有的K 每消耗2K就给队伍所有玩家治疗1♥"}}]
function kards:game/yongpaiku/xianjin/jiance/fashujiance
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
scoreboard players operation @a[team=red] HealBack += @s[team=red] kardCount
scoreboard players operation @a[team=blue] HealBack += @s[team=blue] kardCount
scoreboard players set @s kardCount 0
