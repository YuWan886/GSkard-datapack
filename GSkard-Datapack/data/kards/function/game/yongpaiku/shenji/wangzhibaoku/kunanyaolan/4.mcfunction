scoreboard players remove @s damage_kutongzhuanhua 1
execute if entity @s[team=red] run damage @e[distance=..5,sort=random,limit=1,team=blue] 1 kards:kunanyaolan by @s
execute if entity @s[team=blue] run damage @e[distance=..5,sort=random,limit=1,team=red] 1 kards:kunanyaolan by @s
execute if score @s damage_kutongzhuanhua matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/4