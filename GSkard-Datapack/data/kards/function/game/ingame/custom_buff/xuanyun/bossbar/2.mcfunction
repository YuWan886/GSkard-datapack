$execute store result storage kards $(UUID).UUID int 1 run data get entity @s UUID.[0]

$execute as @s[tag=!bossbar_max_XuanYun] store result score $(UUID).XuanYun.Max temp run scoreboard players get @s XuanYun
$execute store result score $(UUID).XuanYun.Max_New temp run scoreboard players get @s XuanYun

$execute if score $(UUID).XuanYun.Max_New temp > $(UUID).XuanYun.Max temp store result storage kards $(UUID).Max int 1 run tag @s remove bossbar_max_XuanYun
$execute if score $(UUID).XuanYun.Max_New temp > $(UUID).XuanYun.Max temp store result storage kards $(UUID).Max int 1 run scoreboard players operation $(UUID).XuanYun.Max temp = $(UUID).XuanYun.Max_New temp

$execute as @s[tag=!bossbar_max_XuanYun] store result storage kards $(UUID).Max int 1 run scoreboard players get @s XuanYun

$function kards:game/ingame/custom_buff/xuanyun/bossbar/3 with storage kards $(UUID)

