execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.zuzhou.chengmo.1",color:"dark_gray",hover_event:{action:"show_text","value":"本回合与下回合 持续清除敌方所有玩家身边的掉落物"}}]

#红
execute if entity @s[team=red] run scoreboard players add @e[tag=b_dw,limit=1] chengmo 2
#蓝
execute if entity @s[team=blue] run scoreboard players add @e[tag=r_dw,limit=1] chengmo 2
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 4
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1