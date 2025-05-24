#0
execute if items entity @s weapon.mainhand *[custom_data={kards:'金胡萝卜'}] run item replace entity @s weapon.mainhand from block 5 -60 -48 container.18 kards:2shanghai
execute if items entity @s weapon.mainhand *[custom_data={kards:'金剑'}] run item replace entity @s weapon.mainhand from block 5 -60 -48 container.19 kards:3shanghai
execute if items entity @s weapon.mainhand *[custom_data={kards:'铁剑'}] run item replace entity @s weapon.mainhand from block 5 -60 -48 container.20 kards:3shanghai
execute if items entity @s weapon.mainhand *[custom_data={kards:'钻石剑'}] run item replace entity @s weapon.mainhand from block 5 -60 -48 container.21 kards:4shanghai
execute if items entity @s weapon.mainhand *[custom_data={kards:'下界合金剑'}] run item replace entity @s weapon.mainhand from block 5 -60 -48 container.22 kards:5shanghai
execute if items entity @s weapon.mainhand *[custom_data={kards:'铁斧'}] run item replace entity @s weapon.mainhand from block 5 -60 -48 container.23 kards:3shanghai
execute if items entity @s weapon.mainhand *[custom_data={kards:'钻石斧'}] run item replace entity @s weapon.mainhand from block 5 -60 -48 container.24 kards:4shanghai

execute if items entity @s weapon.mainhand *[custom_data={kards:'金胡萝卜'}] run scoreboard players set @s level_jhlb 2
execute if items entity @s weapon.mainhand *[custom_data={kards:'金剑'}] run scoreboard players set @s level_jinjian 2
execute if items entity @s weapon.mainhand *[custom_data={kards:'铁剑'}] run scoreboard players set @s level_tiejian 2
execute if items entity @s weapon.mainhand *[custom_data={kards:'钻石剑'}] run scoreboard players set @s level_zuanshijian 2
execute if items entity @s weapon.mainhand *[custom_data={kards:'下界合金剑'}] run scoreboard players set @s level_xiajiehejinjian 2
execute if items entity @s weapon.mainhand *[custom_data={kards:'铁斧'}] run scoreboard players set @s level_tiefu 2
execute if items entity @s weapon.mainhand *[custom_data={kards:'钻石斧'}] run scoreboard players set @s level_zuanshifu 2

tellraw @s {translate: "game.ingame.shengji.jinzhan.1.1",color: "gray"}
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 100 1