scoreboard players remove @e[tag=XuanYun,scores={XuanYun=1..}] XuanYun 1
execute as @a[scores={XuanYun=1..}] run function kards:game/ingame/custom_buff/xuanyun/bossbar/1

effect give @e[tag=XuanYun,scores={XuanYun=1..}] slowness 1 100 false
effect give @e[tag=XuanYun,scores={XuanYun=1..}] blindness 2 100 false
execute as @e[tag=XuanYun,scores={XuanYun=1..}] run attribute @s minecraft:jump_strength modifier add 0-0-1 -100 add_value
title @a[tag=XuanYun,scores={XuanYun=1..}] times 0t 1s 0t
title @a[tag=XuanYun,scores={XuanYun=1..}] title {text: "眩晕中...",color:"gray",bold:true}
effect clear @e[tag=XuanYun,scores={XuanYun=0}] slowness
effect clear @e[tag=XuanYun,scores={XuanYun=0}] blindness
execute as @e[tag=XuanYun,scores={XuanYun=0}] run attribute @s minecraft:jump_strength modifier remove 0-0-1
title @a[tag=XuanYun,scores={XuanYun=0}] title {text: ""}
tag @e[tag=XuanYun,scores={XuanYun=0}] remove XuanYun
scoreboard players reset @e[scores={XuanYun=0}] XuanYun


scoreboard players reset @a[gamemode=spectator,tag=XuanYun] XuanYun
tag @a[gamemode=spectator,tag=XuanYun] remove XuanYun

