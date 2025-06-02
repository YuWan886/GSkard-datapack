#侦测贝
execute if entity @s[team=red] if entity @e[tag=tuteng,team=red,type=shulker] run return fail
execute if entity @s[team=blue] if entity @e[tag=tuteng,team=blue,type=shulker] run return fail
#<损耗过度>
execute if entity @s[team=red] if score 红队 xianjin_sunhaoguodu matches 1 run scoreboard players operation @s kardCount -= #kard_mobjiance kardCount
execute if entity @s[team=red] if score 红队 xianjin_sunhaoguodu matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<损耗过度>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时-7K"}}]
execute if entity @s[team=red] if score 红队 xianjin_sunhaoguodu matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
execute if entity @s[team=red] if score 红队 xianjin_sunhaoguodu matches 1 run scoreboard players set 红队 xianjin_sunhaoguodu 0

execute if entity @s[team=blue] if score 蓝队 xianjin_sunhaoguodu matches 1 run scoreboard players operation @s kardCount -= #kard_mobjiance kardCount
execute if entity @s[team=blue] if score 蓝队 xianjin_sunhaoguodu matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<损耗过度>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时-7K"}}]
execute if entity @s[team=blue] if score 蓝队 xianjin_sunhaoguodu matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
execute if entity @s[team=blue] if score 蓝队 xianjin_sunhaoguodu matches 1 run scoreboard players set 蓝队 xianjin_sunhaoguodu 0

#<殊死防守>
execute if entity @s[team=red] if score 红队 xianjin_shusifangshou matches 1 run effect give @a[team=blue] absorption 60 9 true
execute if entity @s[team=red] if score 红队 xianjin_shusifangshou matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<殊死防守>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时给予使用该陷阱的队伍60s额外生命20♥"}}]
execute if entity @s[team=red] if score 红队 xianjin_shusifangshou matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
execute if entity @s[team=red] if score 红队 xianjin_shusifangshou matches 1 run scoreboard players set 红队 xianjin_shusifangshou 0

execute if entity @s[team=blue] if score 蓝队 xianjin_shusifangshou matches 1 run effect give @a[team=red] absorption 60 9 true
execute if entity @s[team=blue] if score 蓝队 xianjin_shusifangshou matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<殊死防守>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时给予使用该陷阱的队伍60s额外生命20♥"}}]
execute if entity @s[team=blue] if score 蓝队 xianjin_shusifangshou matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
execute if entity @s[team=blue] if score 蓝队 xianjin_shusifangshou matches 1 run scoreboard players set 蓝队 xianjin_shusifangshou 0

#<合围>
execute if entity @s[team=red] if score 红队 xianjin_hewei matches 1 at @e[limit=1,tag=b_dw] run kill @e[type=!player,tag=!tuteng,team=red,dx=25,dz=25,dy=255]
execute if entity @s[team=red] if score 红队 xianjin_hewei matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<合围>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时清除使用该陷阱的队伍的场上所有敌对怪物"}}]
execute if entity @s[team=red] if score 红队 xianjin_hewei matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
execute if entity @s[team=red] if score 红队 xianjin_hewei matches 1 run scoreboard players set 红队 xianjin_hewei 0

execute if entity @s[team=blue] if score 蓝队 xianjin_hewei matches 1 at @e[limit=1,tag=r_dw] run kill @e[type=!player,tag=!tuteng,team=blue,dx=25,dz=25,dy=255]
execute if entity @s[team=blue] if score 蓝队 xianjin_hewei matches 1 run tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<合围>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时清除使用该陷阱的队伍的场上所有敌对怪物"}}]
execute if entity @s[team=blue] if score 蓝队 xianjin_hewei matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
execute if entity @s[team=blue] if score 蓝队 xianjin_hewei matches 1 run scoreboard players set 蓝队 xianjin_hewei 0