execute store result storage temp kardCount int 2 run scoreboard players get @s Use_Kmax_Game
execute store result storage temp cishu int 0.5 run scoreboard players get @s Use_Kmax_Game

execute store result score @s temp run data get storage temp kardCount
scoreboard players operation @s kardCount += @s temp

execute store result score @s temp run data get storage temp cishu
scoreboard players operation @s cishu += @s temp
