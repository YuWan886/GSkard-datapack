$execute store result storage kards $(UUID).UUID int 1 run data get entity @s UUID.[0]

$execute as @s[tag=!bossbar_max_ZhongShang] store result score $(UUID).ZhongShang.Max temp run scoreboard players get @s ZhongShang_Tick
$execute store result score $(UUID).ZhongShang.Max_New temp run scoreboard players get @s ZhongShang_Tick

$execute if score $(UUID).ZhongShang.Max_New temp > $(UUID).ZhongShang.Max temp store result storage kards $(UUID).Max int 1 run tag @s remove bossbar_max_ZhongShang
$execute if score $(UUID).ZhongShang.Max_New temp > $(UUID).ZhongShang.Max temp store result storage kards $(UUID).Max int 1 run scoreboard players operation $(UUID).ZhongShang.Max temp = $(UUID).ZhongShang.Max_New temp

$execute as @s[tag=!bossbar_max_ZhongShang] store result storage kards $(UUID).Max int 1 run scoreboard players get @s ZhongShang_Tick

$execute if score @s ZhongShang_Round matches 1.. run data modify storage kards $(UUID).Max set value 100

$function kards:game/ingame/custom_buff/zhongshang/bossbar/3 with storage kards $(UUID)