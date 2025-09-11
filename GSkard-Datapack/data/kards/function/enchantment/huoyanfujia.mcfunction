tag @s add enchantment_huoyanfujia
#燃烧时间 = 附魔等级 * 30 [tick]
execute on attacker if entity @s[type=player] store result score @n[tag=enchantment_huoyanfujia] Fire_wait run data get entity @s SelectedItem.components."minecraft:enchantments"."kards:fire_protection"
execute on attacker if entity @s[type=!player] store result score @n[tag=enchantment_huoyanfujia] Fire_wait run data get entity @s equipment.mainhand.components."minecraft:enchantments"."kards:fire_protection"
scoreboard players set #system Fire 15
scoreboard players operation @s Fire_wait *= #system Fire
scoreboard players operation @s Fire += @s Fire_wait
scoreboard players reset @s Fire_wait
execute if score @s Fire matches 300.. run scoreboard players set @s Fire 300
scoreboard players set @s Fire_take_damage 0
tag @s remove enchantment_huoyanfujia
advancement revoke @s only kards:shenqi/tianshenshibanjia/enchantment/huoyanfujia

