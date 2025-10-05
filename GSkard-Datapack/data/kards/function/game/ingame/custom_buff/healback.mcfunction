effect give @a[scores={HealBack=1..}] minecraft:regeneration 1 5 true
effect clear @a[scores={HealBack=0}] regeneration

execute as @e[type=!player,scores={HealBack=1..}] store result score @s temp run data get entity @s Health
execute as @e[type=!player,scores={HealBack=1..}] store result entity @s Health double 1 run scoreboard players operation @s temp += @s HealBack
execute as @e[type=!player,scores={HealBack=1..}] run scoreboard players reset @s HealBack

scoreboard players reset @e[scores={HealBack=0}] HealBack
scoreboard players remove @e[scores={HealBack=1..}] HealBack 1
