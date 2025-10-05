
scoreboard players add @s PoJia 50

execute store result score @s temp run data get entity @s Health
execute on attacker run tag @s add enchantment_zhicaizhe_attacker
execute if score @s temp matches ..10 run damage @s 10 kards:chujue by @p[tag=enchantment_zhicaizhe_attacker]
tag @a[tag=enchantment_zhicaizhe_attacker] remove enchantment_zhicaizhe_attacker
