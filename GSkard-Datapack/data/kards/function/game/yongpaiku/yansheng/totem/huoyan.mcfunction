
scoreboard players add @s HealBack 20

execute if entity @s[team=red] run tag @e[distance=..6,tag=!tuteng,team=blue] add Fire
execute if entity @s[team=blue] run tag @e[distance=..6,tag=!tuteng,team=red] add Fire

execute if entity @s[team=red] run scoreboard players add @e[distance=..6,tag=!tuteng,team=blue] Fire 200
execute if entity @s[team=blue] run scoreboard players add @e[distance=..6,tag=!tuteng,team=red] Fire 200

execute if entity @s[team=red] run tag @e[distance=..6,tag=!tuteng,team=blue] add Fire_Ex
execute if entity @s[team=blue] run tag @e[distance=..6,tag=!tuteng,team=red] add Fire_Ex

advancement revoke @s only kards:totem/huoyan