execute store result score @s random_enchantments run random value 1..17
execute if score @s random_enchantments matches 1 run item modify entity @s weapon.mainhand kards:fengli1
execute if score @s random_enchantments matches 2 run item modify entity @s weapon.mainhand kards:fengli2
execute if score @s random_enchantments matches 3 run item modify entity @s weapon.mainhand kards:fengli3
execute if score @s random_enchantments matches 4 run item modify entity @s weapon.mainhand kards:fengli4
execute if score @s random_enchantments matches 5 run item modify entity @s weapon.mainhand kards:fengli5
execute if score @s random_enchantments matches 6 run item modify entity @s weapon.mainhand kards:huoyanfujia1
execute if score @s random_enchantments matches 7 run item modify entity @s weapon.mainhand kards:jitui1
execute if score @s random_enchantments matches 8 run item modify entity @s weapon.mainhand kards:jitui2
execute if score @s random_enchantments matches 9 run item modify entity @s weapon.mainhand kards:jitui3
execute if score @s random_enchantments matches 10 run item modify entity @s weapon.mainhand kards:fengli3
execute if score @s random_enchantments matches 11 run item modify entity @s weapon.mainhand kards:fengli4
execute if score @s random_enchantments matches 12 run item modify entity @s weapon.mainhand kards:jitui2
execute if score @s random_enchantments matches 13 run item modify entity @s weapon.mainhand kards:jitui3
execute if score @s random_enchantments matches 14 run item modify entity @s weapon.mainhand kards:piaofu
execute if score @s random_enchantments matches 15 run item modify entity @s weapon.mainhand kards:zhongdu
execute if score @s random_enchantments matches 16 run item modify entity @s weapon.mainhand kards:shiming
execute if score @s random_enchantments matches 17 run item modify entity @s weapon.mainhand kards:diaoling

execute if items entity @s weapon.mainhand *[custom_data={kards:'金胡萝卜'}] run scoreboard players set @s level_jhlb 3
execute if items entity @s weapon.mainhand *[custom_data={kards:'金剑'}] run scoreboard players set @s level_jinjian 3
execute if items entity @s weapon.mainhand *[custom_data={kards:'铁剑'}] run scoreboard players set @s level_tiejian 3
execute if items entity @s weapon.mainhand *[custom_data={kards:'钻石剑'}] run scoreboard players set @s level_zuanshijian 3
execute if items entity @s weapon.mainhand *[custom_data={kards:'下界合金剑'}] run scoreboard players set @s level_xiajiehejinjian 3
execute if items entity @s weapon.mainhand *[custom_data={kards:'铁斧'}] run scoreboard players set @s level_tiefu 3
execute if items entity @s weapon.mainhand *[custom_data={kards:'钻石斧'}] run scoreboard players set @s level_zuanshifu 3

tellraw @s {"text": "达到指定击杀数量 武器获得升级！附魔","color": "gray"}
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 100 1