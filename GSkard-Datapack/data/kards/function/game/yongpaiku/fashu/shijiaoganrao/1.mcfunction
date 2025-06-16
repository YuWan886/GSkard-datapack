execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[视角干扰]",color:"dark_purple",hover_event:{action:"show_text",value:"随机旋转敌方玩家视角"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_shijiaoganrao kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

#红
execute if entity @s[team=red] as @a[team=blue,gamemode=adventure] at @s run function kards:game/yongpaiku/fashu/shijiaoganrao/2
#蓝
execute if entity @s[team=blue] as @a[team=red,gamemode=adventure] at @s run function kards:game/yongpaiku/fashu/shijiaoganrao/2

