function kards:enchantment/liansuo/1 with storage enchantment_liansuo_damage
scoreboard players remove @n[tag=enchantment_liansuo] enchantment_liansuo 1
execute if score @n[tag=enchantment_liansuo] enchantment_liansuo matches 0 run return run function kards:enchantment/liansuo/4

tag @s add enchantment_liansuo_target_end


summon marker ~ ~ ~ {Tags:["particle_liansuo_1"]}


execute if entity @s[team=red] at @s run tag @n[team=red,tag=!enchantment_liansuo_target_end,tag=!tuteng] add enchantment_liansuo_target 

execute if entity @s[team=blue] at @s run tag @n[team=blue,tag=!enchantment_liansuo_target_end,tag=!tuteng] add enchantment_liansuo_target 
execute as @n[tag=enchantment_liansuo_target,tag=!enchantment_liansuo_target_end] at @s run summon marker ~ ~ ~ {Tags:["particle_liansuo_2"]}

execute if entity @e[tag=particle_liansuo_2] as @e[tag=particle_liansuo_1,type=marker] at @s anchored eyes facing entity @n[tag=particle_liansuo_2,type=marker] eyes positioned ^ ^ ^0.25 run function kards:enchantment/liansuo/2
kill @e[tag=particle_liansuo_1,type=marker]
kill @e[tag=particle_liansuo_2,type=marker]

execute if score @n[tag=enchantment_liansuo] enchantment_liansuo matches 1.. as @n[tag=enchantment_liansuo_target,tag=!enchantment_liansuo_target_end] at @s run function kards:enchantment/liansuo/3
execute if score @n[tag=enchantment_liansuo] enchantment_liansuo matches 1.. unless entity @n[tag=enchantment_liansuo_target,tag=!enchantment_liansuo_target_end] at @s run function kards:enchantment/liansuo/4

