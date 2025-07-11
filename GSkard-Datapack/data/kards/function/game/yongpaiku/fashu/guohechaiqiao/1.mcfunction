execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[过河拆桥]",color:"dark_purple",hover_event:{action:"show_text",value:"你弃掉敌方一名玩家一张牌"}}]

function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_guohechaiqiao kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

tag @s add User
execute if entity @s[team=red] as @r[team=blue,gamemode=adventure] run function kards:game/yongpaiku/fashu/guohechaiqiao/2
execute if entity @s[team=blue] as @r[team=red,gamemode=adventure] run function kards:game/yongpaiku/fashu/guohechaiqiao/2
tag @s remove User