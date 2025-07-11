scoreboard players remove @s damage_kutongzhuanhua 1

execute if entity @s[team=red] run tag @e[distance=..5,sort=random,limit=1,team=blue] add damage_kutongzhuanhua
execute if entity @s[team=blue] run tag @e[distance=..5,sort=random,limit=1,team=red] add damage_kutongzhuanhua

execute if entity @s[team=red] run damage @n[tag=damage_kutongzhuanhua,team=blue] 0.2 kards:kunanyaolan by @s
execute if entity @s[team=red] run damage @n[tag=damage_kutongzhuanhua,team=blue] 0.6 kards:kunanyaolan_wuli by @s

execute if entity @s[team=blue] run damage @n[tag=damage_kutongzhuanhua,team=red] 0.2 kards:kunanyaolan by @s
execute if entity @s[team=blue] run damage @n[tag=damage_kutongzhuanhua,team=red] 0.6 kards:kunanyaolan_wuli by @s

execute if entity @s[team=red] run tag @n[tag=damage_kutongzhuanhua,team=blue] remove damage_kutongzhuanhua
execute if entity @s[team=blue] run tag @n[tag=damage_kutongzhuanhua,team=red] remove damage_kutongzhuanhua

execute if score @s damage_kutongzhuanhua matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/4