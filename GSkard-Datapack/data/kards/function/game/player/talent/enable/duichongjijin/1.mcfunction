execute store result storage temp kardCountmax int 0.2 run scoreboard players get @s kardCountmax
execute store result score @s temp run data get storage tmp kardCountmax
scoreboard players operation @s kardCountmax += @s temp
