execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[狼群战术]",color:"dark_purple",hover_event:{action:"show_text",value:"敌方两名玩家下回合开始时不能抽牌"}}]

function kards:game/yongpaiku/xianjin/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_langqunzhanshu kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
execute unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

#红
execute if entity @s[team=red] run scoreboard players add @a[team=blue,limit=2,gamemode=adventure,scores={langqunzhanshu=0},sort=random] langqunzhanshu 1
#蓝
execute if entity @s[team=blue] run scoreboard players add @a[team=red,limit=2,gamemode=adventure,scores={langqunzhanshu=0},sort=random] langqunzhanshu 1

