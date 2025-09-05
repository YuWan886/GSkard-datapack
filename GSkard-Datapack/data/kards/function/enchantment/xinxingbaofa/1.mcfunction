tag @s add Fire
execute unless score @s Fire matches 60.. run scoreboard players set @s Fire 60

execute store result score @s enchantment_chance_temp run random value 1..100
execute if score @s enchantment_chance_temp matches 1..35 run function kards:enchantment/xinxingbaofa/2