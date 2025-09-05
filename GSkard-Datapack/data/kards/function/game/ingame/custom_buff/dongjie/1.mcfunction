scoreboard players remove @e[tag=DongJie,scores={DongJie=1..}] DongJie 1

execute as @e[tag=DongJie,scores={DongJie=1..}] at @s run particle snowflake ~ ~ ~ 0.2 2 0.2 0 1 force @a

effect give @e[tag=DongJie,scores={DongJie=1..}] slowness 1 100 false
effect clear @e[tag=DongJie,scores={DongJie=0}] slowness

effect give @e[tag=DongJie,scores={DongJie=1..}] mining_fatigue 1 128 false
effect clear @e[tag=DongJie,scores={DongJie=0}] mining_fatigue

execute as @a[tag=DongJie,scores={DongJie=1..}] run attribute @s minecraft:jump_strength modifier add 0-0-3 -1 add_multiplied_total
execute as @e[tag=DongJie,scores={DongJie=0}] run attribute @s minecraft:jump_strength modifier remove 0-0-3

title @a[tag=DongJie,scores={DongJie=1..}] times 0t 2t 0t
title @a[tag=DongJie,scores={DongJie=1..}] title {text: "冻结中...",color:"aqua",bold:true}
title @a[tag=DongJie,scores={DongJie=0}] title {text: ""}

scoreboard players add @e[tag=DongJie,scores={DongJie=1..}] DongJie_damage 1
execute as @e[tag=DongJie,scores={DongJie_damage=25}] run damage @s 5 freeze
scoreboard players reset @e[tag=DongJie,scores={DongJie_damage=25}] DongJie_damage

tag @e[tag=DongJie,scores={DongJie=0}] remove DongJie
scoreboard players reset @a[gamemode=spectator,tag=DongJie] DongJie
tag @a[gamemode=spectator,tag=DongJie] remove DongJie


