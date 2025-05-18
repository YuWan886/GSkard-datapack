scoreboard players remove @s damage_tianshenshibanjia 1
damage @e[team=blue,distance=..5,limit=1,sort=random] 1 kards:tianshenshibanjia by @s[team=red]
damage @e[team=red,distance=..5,limit=1,sort=random] 1 kards:tianshenshibanjia by @s[team=blue]
execute if score @s damage_tianshenshibanjia matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/tianshenshibanjia/damage
execute if score @s damage_tianshenshibanjia matches 0 run tag @s remove damage_tianshenshibanjia