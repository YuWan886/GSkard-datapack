$data modify entity @s damage set value $(damage)
$data modify entity @s PierceLevel set value $(pierce_level)

rotate @s facing entity @n[tag=enchantment_shenpanzhe_attacker]

data modify entity @s owner set from entity @n[tag=enchantment_shenpanzhe_victim] UUID

execute store result score @s temp_Mob_Move1 run data get entity @s Pos[0] 1000
execute store result score @s temp_Mob_Move2 run data get entity @s Pos[1] 1000
execute store result score @s temp_Mob_Move3 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

execute at @s store result score @s temp_Mob_Move1_ run data get entity @s Pos[0] 1000
execute at @s store result score @s temp_Mob_Move2_ run data get entity @s Pos[1] 1000
execute at @s store result score @s temp_Mob_Move3_ run data get entity @s Pos[2] 1000

tp @s ~ ~ ~

execute store result entity @s Motion[0] double 0.002 run scoreboard players operation @s temp_Mob_Move1_ -= @s temp_Mob_Move1
execute store result entity @s Motion[1] double 0.002 run scoreboard players operation @s temp_Mob_Move2_ -= @s temp_Mob_Move2
execute store result entity @s Motion[2] double 0.002 run scoreboard players operation @s temp_Mob_Move3_ -= @s temp_Mob_Move3

tp @s ~ ~1 ~

data modify entity @s LeftOwner set value 1b
