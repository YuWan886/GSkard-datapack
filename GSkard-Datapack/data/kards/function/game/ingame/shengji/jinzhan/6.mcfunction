execute if items entity @s weapon.mainhand *[custom_data={kards:'下界合金剑'}] run item modify entity @s weapon.mainhand kards:5shanghai

execute if items entity @s weapon.mainhand *[custom_data={kards:'下界合金剑'}] run scoreboard players set @s level_xiajiehejinjian 6

tellraw @s {"text": "达到指定击杀数量 武器获得升级！","color": "gray"}
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 100 1