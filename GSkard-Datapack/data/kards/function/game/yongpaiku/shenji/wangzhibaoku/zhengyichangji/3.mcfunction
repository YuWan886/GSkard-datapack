execute if entity @s[team=red] run summon minecraft:lightning_bolt ~ ~ ~ {Team:blue}
execute if entity @s[team=blue] run summon minecraft:lightning_bolt ~ ~ ~ {Team:red}
scoreboard players add @s XuanYun 20
tag @s add XuanYun
