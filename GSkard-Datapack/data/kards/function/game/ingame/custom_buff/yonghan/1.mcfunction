scoreboard players add @e[scores={YongHan=1..}] YongHan_liushi 1
scoreboard players remove @e[scores={YongHan_liushi=60}] YongHan 1
execute as @a[scores={YongHan=0..}] run function kards:game/ingame/custom_buff/yonghan/bossbar/1

scoreboard players set @e[scores={YongHan_liushi=60}] YongHan_liushi 0

scoreboard players add @e[scores={YongHan=1..,DongJie=1..}] YongHan_DongJie_liushi 1
scoreboard players remove @e[scores={YongHan_DongJie_liushi=40}] YongHan 1
scoreboard players set @e[scores={YongHan_DongJie_liushi=40}] YongHan_DongJie_liushi 0

execute as @e[scores={YongHan=18..}] at @s run function kards:game/ingame/custom_buff/dongjie/yonghanbaofa

execute as @e[scores={YongHan=1..}] run attribute @s movement_speed modifier add 0-0-3 -0.05 add_multiplied_base
execute as @e[scores={YongHan=0}] run attribute @s movement_speed modifier remove 0-0-3

scoreboard players reset @e[scores={YongHan=0}] YongHan