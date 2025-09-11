scoreboard players remove @a[tag=DuanTui,scores={DuanTui=1..}] DuanTui 1
execute as @a[scores={DuanTui=0..}] run function kards:game/ingame/custom_buff/duantui/bossbar/1

execute as @a[tag=DuanTui,scores={DuanTui=1..}] run attribute @s minecraft:jump_strength modifier add 0-0-2 -1 add_multiplied_total
execute as @a[tag=DuanTui,scores={DuanTui=0}] run attribute @s minecraft:jump_strength modifier remove 0-0-2

tag @a[tag=DuanTui,scores={DuanTui=0}] remove DuanTui
scoreboard players reset @a[scores={DuanTui=0}] DuanTui

scoreboard players reset @a[gamemode=spectator,tag=DuanTui] DuanTui
tag @a[gamemode=spectator,tag=DuanTui] remove DuanTui

