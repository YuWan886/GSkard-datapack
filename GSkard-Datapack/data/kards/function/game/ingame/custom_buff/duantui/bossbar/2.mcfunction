$execute store result storage kards $(UUID).UUID int 1 run data get entity @s UUID.[0]

$execute as @s[tag=!bossbar_max_DuanTui] store result score $(UUID).DuanTui.Max temp run scoreboard players get @s DuanTui
$execute store result score $(UUID).DuanTui.Max_New temp run scoreboard players get @s DuanTui

$execute if score $(UUID).DuanTui.Max_New temp > $(UUID).DuanTui.Max temp store result storage kards $(UUID).Max int 1 run tag @s remove bossbar_max_DuanTui
$execute if score $(UUID).DuanTui.Max_New temp > $(UUID).DuanTui.Max temp store result storage kards $(UUID).Max int 1 run scoreboard players operation $(UUID).DuanTui.Max temp = $(UUID).DuanTui.Max_New temp

$execute as @s[tag=!bossbar_max_DuanTui] store result storage kards $(UUID).Max int 1 run scoreboard players get @s DuanTui

$function kards:game/ingame/custom_buff/duantui/bossbar/3 with storage kards $(UUID)

