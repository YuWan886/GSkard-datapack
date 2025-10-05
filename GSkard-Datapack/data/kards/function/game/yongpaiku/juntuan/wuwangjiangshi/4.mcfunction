rotate @s[team=red] facing entity @n[team=blue,type=player] feet
rotate @s[team=blue] facing entity @n[team=red,type=player] feet
rotate @s[team=] facing entity @n[type=player] feet

execute store result score @s temp_Mob_Move1 run data get entity @s Pos[0] 1000
execute store result score @s temp_Mob_Move3 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^-1

execute at @s store result score @s temp_Mob_Move1_ run data get entity @s Pos[0] 1000
execute at @s store result score @s temp_Mob_Move3_ run data get entity @s Pos[2] 1000

tp @s ~ ~ ~

execute store result entity @s Motion[0] double 0.00025 run scoreboard players operation @s temp_Mob_Move1_ -= @s temp_Mob_Move1
execute store result entity @s Motion[2] double 0.00025 run scoreboard players operation @s temp_Mob_Move3_ -= @s temp_Mob_Move3

scoreboard players remove @s wuwangchuchang 1