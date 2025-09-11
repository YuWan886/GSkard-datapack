scoreboard players remove @e[tag=PoJia,scores={PoJia=1..}] PoJia 1
execute as @a[scores={PoJia=1..}] run function kards:game/ingame/custom_buff/pojia/bossbar/1

execute as @e[tag=PoJia,scores={PoJia=1..}] run attribute @s armor modifier add 0-0-2 -0.4 add_multiplied_total

execute as @e[tag=PoJia,scores={PoJia=1..}] at @s run particle enchanted_hit ~ ~2.3 ~ 0.2 0 0.2 0 4 force @a
execute as @e[tag=PoJia,scores={PoJia=0}] run attribute @s armor modifier remove 0-0-2
execute as @e[tag=PoJia,scores={PoJia=0}] run tag @s remove PoJia
execute as @e[tag=PoJia,scores={PoJia=0}] run scoreboard players reset @s PoJia
