#侦测贝
execute if entity @s[team=red] if entity @e[tag=tuteng,team=red,type=shulker] run return fail
execute if entity @s[team=blue] if entity @e[tag=tuteng,team=blue,type=shulker] run return fail
#<遥远的桥>
execute if score 红队 xianjin_yaoyuandeqiao matches 1 at @e[limit=1,tag=b_dw] run kill @e[type=!player,tag=!tuteng,team=red,dx=25,dz=25,dy=255]
execute if score 红队 xianjin_yaoyuandeqiao matches 1 run tellraw @a [{"text": "红队","color": "red"},{"text": "触发了","color": "gray"},{"text": "<遥远的桥>","color": "dark_aqua","hoverEvent":{"action":"show_text","value":"触发时清除使用该陷阱的队伍的场上所有敌对怪物"}}]
execute if score 红队 xianjin_yaoyuandeqiao matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1

execute if score 蓝队 xianjin_yaoyuandeqiao matches 1 at @e[limit=1,tag=r_dw] run kill @e[type=!player,tag=!tuteng,team=blue,dx=25,dz=25,dy=255]
execute if score 蓝队 xianjin_yaoyuandeqiao matches 1 run tellraw @a [{"text": "蓝队","color": "blue"},{"text": "触发了","color": "gray"},{"text": "<遥远的桥>","color": "dark_aqua","hoverEvent":{"action":"show_text","value":"触发时清除使用该陷阱的队伍的场上所有敌对怪物"}}]
execute if score 蓝队 xianjin_yaoyuandeqiao matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1

execute if score 红队 xianjin_yaoyuandeqiao matches 1..2 run scoreboard players remove 红队 xianjin_yaoyuandeqiao 1
execute if score 蓝队 xianjin_yaoyuandeqiao matches 1..2 run scoreboard players remove 蓝队 xianjin_yaoyuandeqiao 1

#<轻虑浅谋>

execute if score 红队 xianjin_qinglvqianmou matches 1 run scoreboard players set @a[team=red] qinglvqianmou 1
execute if score 红队 xianjin_qinglvqianmou matches 1 run tellraw @a [{"text": "红队","color": "red"},{"text": "触发了","color": "gray"},{"text": "<轻虑浅谋>","color": "dark_aqua","hoverEvent":{"action":"show_text","value":"触发时让触发者队伍所有玩家扣除等同于本回合内使用卡牌数量的血量"}}]
execute if score 红队 xianjin_qinglvqianmou matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1

execute if score 蓝队 xianjin_qinglvqianmou matches 1 run scoreboard players set @a[team=blue] qinglvqianmou 1
execute if score 蓝队 xianjin_qinglvqianmou matches 1 run tellraw @a [{"text": "蓝队","color": "blue"},{"text": "触发了","color": "gray"},{"text": "<轻虑浅谋>","color": "dark_aqua","hoverEvent":{"action":"show_text","value":"触发时让触发者队伍所有玩家扣除等同于本回合内使用卡牌数量的血量"}}]
execute if score 蓝队 xianjin_qinglvqianmou matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1

execute if score 蓝队 xianjin_qinglvqianmou matches 1.. run scoreboard players remove 蓝队 xianjin_qinglvqianmou 1
execute if score 红队 xianjin_qinglvqianmou matches 1.. run scoreboard players remove 红队 xianjin_qinglvqianmou 1

#<偷梁换柱>
execute store result score 红队 YunSuan_1 if entity @a[team=red,gamemode=adventure]
execute store result score 蓝队 YunSuan_1 if entity @a[team=blue,gamemode=adventure]

scoreboard players set 红队 kardCount 0
scoreboard players set 蓝队 kardCount 0

scoreboard players operation 红队 kardCount > @a[team=blue] kardCount
scoreboard players operation 蓝队 kardCount > @a[team=red] kardCount

scoreboard players operation 红队 kardCount /= 红队 YunSuan_1
scoreboard players operation 蓝队 kardCount /= 蓝队 YunSuan_1

execute if score 红队 kardCount matches 7.. run scoreboard players set 红队 kardCount 6
execute if score 蓝队 kardCount matches 7.. run scoreboard players set 蓝队 kardCount 6

execute if score 红队 xianjin_toulianghuanzhu matches 1 as @a[team=red] run scoreboard players operation @s kardCount += 红队 kardCount
execute if score 红队 xianjin_toulianghuanzhu matches 1 run tellraw @a [{"text": "红队","color": "red"},{"text": "触发了","color": "gray"},{"text": "<偷梁换柱>","color": "dark_aqua","hoverEvent":{"action":"show_text","value":"记录敌方一名K点最多的玩家的K点 在下回合时使其均分给我方所有玩家 每名玩家最多6K(不取余数)"}}]
execute if score 红队 xianjin_toulianghuanzhu matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1

execute if score 蓝队 xianjin_toulianghuanzhu matches 1 as @a[team=blue] run scoreboard players operation @s kardCount += 蓝队 kardCount
execute if score 蓝队 xianjin_toulianghuanzhu matches 1 run tellraw @a [{"text": "蓝队","color": "blue"},{"text": "触发了","color": "gray"},{"text": "<偷梁换柱>","color": "dark_aqua","hoverEvent":{"action":"show_text","value":"记录敌方一名K点最多的玩家的K点 在下回合时使其均分给我方所有玩家 每名玩家最多6K(不取余数)"}}]
execute if score 蓝队 xianjin_toulianghuanzhu matches 1 as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1

scoreboard players reset 红队 kardCount
scoreboard players reset 蓝队 kardCount
scoreboard players reset 红队 YunSuan_1
scoreboard players reset 蓝队 YunSuan_1

execute if score 蓝队 xianjin_toulianghuanzhu matches 1.. run scoreboard players remove 蓝队 xianjin_toulianghuanzhu 1
execute if score 红队 xianjin_toulianghuanzhu matches 1.. run scoreboard players remove 红队 xianjin_toulianghuanzhu 1