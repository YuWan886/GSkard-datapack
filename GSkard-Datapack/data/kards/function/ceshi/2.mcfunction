execute store result score @s VectorDX run data get entity @s Pos[0] 100
execute store result score @s VectorDY run data get entity @s Pos[1] 100
execute store result score @s VectorDZ run data get entity @s Pos[2] 100

scoreboard players operation @s VectorDX -= @s VectorX
scoreboard players operation @s VectorDY -= @s VectorY
scoreboard players operation @s VectorDZ -= @s VectorZ

data modify entity @s acceleration_power set value 0.1
data modify entity @s NoGravity set value 1b

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s VectorX
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s VectorY
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s VectorZ

