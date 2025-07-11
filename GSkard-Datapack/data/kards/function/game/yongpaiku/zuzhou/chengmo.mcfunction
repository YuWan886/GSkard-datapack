execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[沉默]",color:"dark_gray",hover_event:{action:"show_text",value:"本回合与下回合 持续清除敌方所有玩家身边的掉落物"}}]
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] run scoreboard players set @e[tag=b_dw,limit=1] chengmo 2
execute if entity @s[team=blue] run scoreboard players set @e[tag=r_dw,limit=1] chengmo 2
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_chengmo kardCount
