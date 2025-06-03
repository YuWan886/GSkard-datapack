tag @s add enchantment_huoyanfujia
tag @s add Fire
#有等级*60的tick添加燃烧
execute on attacker store result score @n[tag=enchantment_huoyanfujia] Fire run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:fire_protection"
scoreboard players set #system Fire 60
scoreboard players operation @s Fire *= #system Fire
scoreboard players set @s Fire_take_damage 0
tag @s remove enchantment_huoyanfujia
advancement revoke @s only kards:enchantment/huoyanfujia