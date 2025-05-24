execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.zuzhou.hunluan.1",color:"dark_gray",hover_event:{action:"show_text","value":"敌方队伍打开友伤 持续至回合结束"}}]

#红
execute if entity @s[team=red] run team modify blue friendlyFire true
#蓝
execute if entity @s[team=blue] run team modify red friendlyFire true
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_hunluan kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1