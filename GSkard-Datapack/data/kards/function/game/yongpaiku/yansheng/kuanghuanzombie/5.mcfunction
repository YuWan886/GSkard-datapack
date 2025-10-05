data modify entity @s Owner set from entity @n[tag=Skill_Temp] UUID

execute store result score @s temp_Mob_Move1 run data get entity @s Pos[0] 1000
execute store result score @s temp_Mob_Move3 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

execute at @s store result score @s temp_Mob_Move1_ run data get entity @s Pos[0] 1000
execute at @s store result score @s temp_Mob_Move3_ run data get entity @s Pos[2] 1000

tp @s ~ ~ ~

execute store result entity @s Motion[0] double 0.001 run scoreboard players operation @s temp_Mob_Move1_ -= @s temp_Mob_Move1
execute store result entity @s Motion[2] double 0.001 run scoreboard players operation @s temp_Mob_Move3_ -= @s temp_Mob_Move3