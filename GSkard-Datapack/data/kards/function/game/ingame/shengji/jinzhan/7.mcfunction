execute store result score @s random_enchantments run random value 1..8
execute if score @s random_enchantments matches 1 run item modify entity @s weapon.mainhand kards:enchantment/fengli
execute if score @s random_enchantments matches 2 run item modify entity @s weapon.mainhand kards:enchantment/piaofu
execute if score @s random_enchantments matches 3 run item modify entity @s weapon.mainhand kards:enchantment/zhongdu
execute if score @s random_enchantments matches 4 run item modify entity @s weapon.mainhand kards:enchantment/shiming
execute if score @s random_enchantments matches 5 run item modify entity @s weapon.mainhand kards:enchantment/diaoling
execute if score @s random_enchantments matches 6 run item modify entity @s weapon.mainhand kards:enchantment/huanman
execute if score @s random_enchantments matches 7 run item modify entity @s weapon.mainhand kards:enchantment/xuruo
execute if score @s random_enchantments matches 8 run item modify entity @s weapon.mainhand kards:enchantment/liansuo

execute if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run item modify entity @s weapon.mainhand kards:6shanghai

execute if items entity @s weapon.mainhand #kards:jinzhanwuqi[custom_data={kards:'下界合金剑'}] run scoreboard players set @s level_xiajiehejinjian 7

tellraw @s {text: "达到指定击杀数量 武器获得升级！",color: "gray"}
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 100 1