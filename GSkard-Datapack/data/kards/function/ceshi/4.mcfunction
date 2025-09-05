data modify entity @s NoGravity set value 1b

execute store result score @s temp_Mob_Move1 run data get entity @s Pos[0] 1000
execute store result score @s temp_Mob_Move2 run data get entity @s Pos[1] 1000
execute store result score @s temp_Mob_Move3 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

execute at @s store result score @s temp_Mob_Move1_ run data get entity @s Pos[0] 1000
execute at @s store result score @s temp_Mob_Move2_ run data get entity @s Pos[1] 1000
execute at @s store result score @s temp_Mob_Move3_ run data get entity @s Pos[2] 1000

tp @s ~ ~ ~

execute store result entity @s Motion[0] double 0.0025 run scoreboard players operation @s temp_Mob_Move1_ -= @s temp_Mob_Move1
execute store result entity @s Motion[1] double 0.0025 run scoreboard players operation @s temp_Mob_Move2_ -= @s temp_Mob_Move2
execute store result entity @s Motion[2] double 0.0025 run scoreboard players operation @s temp_Mob_Move3_ -= @s temp_Mob_Move3