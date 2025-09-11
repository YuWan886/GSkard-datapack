$execute store result storage kards $(UUID).UUID int 1 run data get entity @s UUID.[0]

$execute as @s[tag=!bossbar_max_Fire] store result score $(UUID).Fire.Max temp run scoreboard players get @s Fire
$execute store result score $(UUID).Fire.Max_New temp run scoreboard players get @s Fire

$execute if score $(UUID).Fire.Max_New temp > $(UUID).Fire.Max temp store result storage kards $(UUID).Max int 1 run tag @s remove bossbar_max_Fire
$execute if score $(UUID).Fire.Max_New temp > $(UUID).Fire.Max temp store result storage kards $(UUID).Max int 1 run scoreboard players operation $(UUID).Fire.Max temp = $(UUID).Fire.Max_New temp

$execute as @s[tag=!bossbar_max_Fire] store result storage kards $(UUID).Max int 1 run scoreboard players get @s Fire

$function kards:game/ingame/custom_buff/huoyan/bossbar/3 with storage kards $(UUID)
