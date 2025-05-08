execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[混乱]","color":"dark_gray","hoverEvent":{"action":"show_text","value":"敌方队伍打开友伤 持续至回合结束"}}]

#红
execute if entity @s[team=red] run team modify blue friendlyFire true
#蓝
execute if entity @s[team=blue] run team modify red friendlyFire true
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 1
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1