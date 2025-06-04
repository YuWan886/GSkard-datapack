
execute store result score @s VectorX run data get entity @s Pos[0] 100
execute store result score @s VectorY run data get entity @s Pos[1] 100
execute store result score @s VectorZ run data get entity @s Pos[2] 100

tp @s ^ ^ ^0.25

execute at @s store result score @s VectorDX run data get entity @s Pos[0] 100
execute at @s store result score @s VectorDY run data get entity @s Pos[1] 100
execute at @s store result score @s VectorDZ run data get entity @s Pos[2] 100

scoreboard players operation @s VectorDX -= @s VectorX
scoreboard players operation @s VectorDY -= @s VectorY
scoreboard players operation @s VectorDZ -= @s VectorZ

#data modify entity @s NoGravity set value 1b

execute store result entity @s Motion[0] double 0.1 run scoreboard players get @s VectorDX
execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s VectorDY
execute store result entity @s Motion[2] double 0.1 run scoreboard players get @s VectorDZ

