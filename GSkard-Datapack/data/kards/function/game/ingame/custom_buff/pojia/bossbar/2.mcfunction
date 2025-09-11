$execute store result storage kards $(UUID).UUID int 1 run data get entity @s UUID.[0]

$execute as @s[tag=!bossbar_max_PoJia] store result score $(UUID).PoJia.Max temp run scoreboard players get @s PoJia
$execute store result score $(UUID).PoJia.Max_New temp run scoreboard players get @s PoJia

$execute if score $(UUID).PoJia.Max_New temp > $(UUID).PoJia.Max temp store result storage kards $(UUID).Max int 1 run tag @s remove bossbar_max_PoJia
$execute if score $(UUID).PoJia.Max_New temp > $(UUID).PoJia.Max temp store result storage kards $(UUID).Max int 1 run scoreboard players operation $(UUID).PoJia.Max temp = $(UUID).PoJia.Max_New temp

$execute as @s[tag=!bossbar_max_PoJia] store result storage kards $(UUID).Max int 1 run scoreboard players get @s PoJia

$function kards:game/ingame/custom_buff/pojia/bossbar/3 with storage kards $(UUID)

