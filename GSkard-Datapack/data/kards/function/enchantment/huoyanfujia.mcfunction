tag @s add enchantment_huoyanfujia
tag @s add Fire
#燃烧时间 = 附魔等级 * 30 [tick]
execute on attacker store result score @n[tag=enchantment_huoyanfujia] Fire_wait run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:fire_protection"
scoreboard players set #system Fire 15
scoreboard players operation @s Fire_wait *= #system Fire
scoreboard players operation @s Fire += @s Fire_wait
scoreboard players reset @s Fire_wait
execute if score @s Fire matches 300.. run scoreboard players set @s Fire 300
scoreboard players set @s Fire_take_damage 0
tag @s remove enchantment_huoyanfujia
advancement revoke @s only kards:enchantment/huoyanfujia