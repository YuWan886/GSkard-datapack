execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[超脱洗礼]",color:"dark_purple",hover_event:{action:"show_text",value:"为队伍玩家回复8♥"}}]

function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_chaotuoxili kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air


execute if entity @s[team=red] run scoreboard players add @a[team=red,gamemode=adventure] HealBack 16

execute if entity @s[team=blue] run scoreboard players add @a[team=blue,gamemode=adventure] HealBack 16

