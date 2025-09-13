scoreboard players reset @a[gamemode=spectator] DongJie

scoreboard players remove @e[scores={DongJie=0..}] DongJie 1
execute as @a[scores={DongJie=0..}] run function kards:game/ingame/custom_buff/dongjie/bossbar/1

execute as @e[scores={DongJie=1..}] at @s run particle snowflake ~ ~ ~ 0.2 2 0.2 0 1 force @a

effect give @e[scores={DongJie=1..}] slowness 1 100 false
effect clear @e[scores={DongJie=0}] slowness

effect give @e[scores={DongJie=1..}] mining_fatigue 1 128 false
effect clear @e[scores={DongJie=0}] mining_fatigue

execute as @a[scores={DongJie=1..}] run attribute @s minecraft:jump_strength modifier add 0-0-3 -1 add_multiplied_total
execute as @e[scores={DongJie=0}] run attribute @s minecraft:jump_strength modifier remove 0-0-3

scoreboard players add @e[scores={DongJie=1..}] DongJie_damage 1
execute as @e[scores={DongJie_damage=25}] run damage @s 5 freeze
scoreboard players reset @e[scores={DongJie_damage=25}] DongJie_damage


scoreboard players reset @e[scores={DongJie=0}] DongJie




