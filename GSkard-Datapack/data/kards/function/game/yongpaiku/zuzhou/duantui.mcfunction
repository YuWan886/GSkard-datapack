execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[断腿]","color":"dark_gray","hoverEvent":{"action":"show_text","value":"敌方玩家获得缓慢2且无法跳跃 持续20s"}}]

#红
execute if entity @s[team=red] run effect give @a[team=blue,gamemode=adventure] slowness 15 1 true
execute if entity @s[team=red] run scoreboard players set @a[team=blue,gamemode=adventure] DuanTui 300
execute if entity @s[team=red] run tag @a[team=blue,gamemode=adventure] add DuanTui
#蓝
execute if entity @s[team=blue] run effect give @a[team=red,gamemode=adventure] slowness 15 1 true
execute if entity @s[team=blue] run scoreboard players set @a[team=red,gamemode=adventure] DuanTui 300
execute if entity @s[team=blue] run tag @a[team=red,gamemode=adventure] add DuanTui
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 2
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1