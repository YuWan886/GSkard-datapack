particle minecraft:flame ~ ~0.3 ~ 0 0 0 .3 100
execute if entity @s[team=red] as @e[distance=..5,team=red] run function kards:enchantment/xinxingbaofa/3
execute if entity @s[team=blue] as @e[distance=..5,team=blue] run function kards:enchantment/xinxingbaofa/3
execute if entity @s[team=!blue,team=!red] as @e[distance=..5,type=!player] run function kards:enchantment/xinxingbaofa/3
