effect give @s slowness 3 2 false
effect give @s mining_fatigue 3 2 false

execute store result score @s enchantment_chance_temp run random value 1..100

execute if score @s[type=player] enchantment_chance_temp matches 1..10 run scoreboard players add @s DongJie 50

execute if score @s[type=!player] enchantment_chance_temp matches 1..50 run scoreboard players add @s DongJie 50
