execute if items entity @s weapon.mainhand *[custom_data={kards:'下界合金剑'}] run item modify entity @s weapon.mainhand kards:5shanghai

execute if items entity @s weapon.mainhand *[custom_data={kards:'下界合金剑'}] run scoreboard players set @s level_xiajiehejinjian 6

tellraw @s {translate: "game.ingame.shengji.jinzhan.6.1",color: "gray"}
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 100 1