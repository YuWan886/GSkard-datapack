execute store result score @s random_enchantments run random value 1..4
execute if score @s random_enchantments matches 1 run item modify entity @s weapon.mainhand kards:piaofu
execute if score @s random_enchantments matches 2 run item modify entity @s weapon.mainhand kards:zhongdu
execute if score @s random_enchantments matches 3 run item modify entity @s weapon.mainhand kards:shiming
execute if score @s random_enchantments matches 4 run item modify entity @s weapon.mainhand kards:diaoling
execute if items entity @s weapon.mainhand *[custom_data={kards:'重锤'}] run enchant @s minecraft:breach 3

execute if items entity @s weapon.mainhand *[custom_data={kards:'金胡萝卜'}] run scoreboard players set @s level_jhlb 5
execute if items entity @s weapon.mainhand *[custom_data={kards:'金剑'}] run scoreboard players set @s level_jinjian 5
execute if items entity @s weapon.mainhand *[custom_data={kards:'铁剑'}] run scoreboard players set @s level_tiejian 5
execute if items entity @s weapon.mainhand *[custom_data={kards:'钻石剑'}] run scoreboard players set @s level_zuanshijian 5
execute if items entity @s weapon.mainhand *[custom_data={kards:'下界合金剑'}] run scoreboard players set @s level_xiajiehejinjian 5
execute if items entity @s weapon.mainhand *[custom_data={kards:'铁斧'}] run scoreboard players set @s level_tiefu 5
execute if items entity @s weapon.mainhand *[custom_data={kards:'钻石斧'}] run scoreboard players set @s level_zuanshifu 5
execute if items entity @s weapon.mainhand *[custom_data={kards:'重锤'}] run scoreboard players set @s level_zhongchui 5

tellraw @s {text: "达到指定击杀数量 武器获得升级！附魔",color: "gray"}
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 100 1