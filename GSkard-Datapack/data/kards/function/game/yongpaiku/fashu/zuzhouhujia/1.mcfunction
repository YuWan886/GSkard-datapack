execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[诅咒护甲]",color:"dark_purple",hover_event:{action:"show_text",value:"将敌方一名敌人的胸甲卸下并替换成诅咒护甲\n持续至回合结束"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_zuzhouhujia kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute if entity @s[team=red] as @r[team=blue,tag=!zuzhouhujia] at @s run function kards:game/yongpaiku/fashu/zuzhouhujia/2

execute if entity @s[team=blue] as @r[team=red,tag=!zuzhouhujia] at @s run function kards:game/yongpaiku/fashu/zuzhouhujia/2


