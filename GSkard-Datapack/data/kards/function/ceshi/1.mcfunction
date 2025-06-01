execute at @s anchored eyes run summon wither_skull ^ ^ ^0.25 {Tags:["ceshi"]}
execute at @s anchored eyes run tp @n[tag=ceshi] ^ ^ ^ ~ ~
data modify entity @n[tag=ceshi] Owner set from entity @s UUID

execute store result score @n[tag=ceshi] VectorX run data get entity @s Pos[0] 100
execute store result score @n[tag=ceshi] VectorY run data get entity @s Pos[1] 100
execute store result score @n[tag=ceshi] VectorZ run data get entity @s Pos[2] 100

execute at @s as @n[tag=ceshi] run function kards:ceshi/2