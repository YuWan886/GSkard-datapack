$execute store result storage kards $(UUID).UUID int 1 run data get entity @s UUID.[0]

$execute as @s[tag=!bossbar_max_DongJie] store result score $(UUID).DongJie.Max temp run scoreboard players get @s DongJie
$execute store result score $(UUID).DongJie.Max_New temp run scoreboard players get @s DongJie

$execute if score $(UUID).DongJie.Max_New temp > $(UUID).DongJie.Max temp store result storage kards $(UUID).Max int 1 run tag @s remove bossbar_max_DongJie
$execute if score $(UUID).DongJie.Max_New temp > $(UUID).DongJie.Max temp store result storage kards $(UUID).Max int 1 run scoreboard players operation $(UUID).DongJie.Max temp = $(UUID).DongJie.Max_New temp

$execute as @s[tag=!bossbar_max_DongJie] store result storage kards $(UUID).Max int 1 run scoreboard players get @s DongJie

$function kards:game/ingame/custom_buff/dongjie/bossbar/3 with storage kards $(UUID)

