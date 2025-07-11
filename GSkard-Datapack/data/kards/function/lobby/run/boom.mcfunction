tp @s 54 234 -46 0 3
scoreboard players reset @s RunningTime
scoreboard players reset @s RunningTime_All
scoreboard players reset @s RunningTime_Sec
scoreboard players reset @s RunningTime_Min
scoreboard players reset @s RunningTime_Tick
tag @s remove Running
tag @s add Un_Ready
team join lobby
scoreboard players set @s[gamemode=adventure] GameMode 1
scoreboard players set @s[gamemode=creative] GameMode 2
execute at @s run tp @s ~ ~1000 ~
gamemode creative @s
execute at @s positioned ^ ^-0.5 ^-3 anchored eyes summon minecraft:end_crystal run damage @s 1
execute at @s positioned ^ ^-0.5 ^-3 anchored eyes summon minecraft:end_crystal run damage @s 1
gamemode adventure @s[scores={GameMode=1}]
gamemode creative @s[scores={GameMode=2}]
execute at @s run tp @s ~ ~-1000 ~
