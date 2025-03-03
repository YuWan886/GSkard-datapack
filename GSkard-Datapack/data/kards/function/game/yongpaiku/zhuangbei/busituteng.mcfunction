execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[不死图腾]",color:"gold"}]
execute store result score @s random_busituteng run random value 1..6
execute if score @s random_busituteng matches 1 run give @s minecraft:totem_of_undying[item_name={text:"自爆图腾",color:"red"},lore=[{text:"在死亡时自爆",color:"gray",italic:false},{text:"对周围所有生物造成35♥无差别伤害",color:"gray",italic:false}],custom_data={kards:'自爆图腾'}]
execute if score @s random_busituteng matches 2 run give @s minecraft:totem_of_undying[item_name={text:"生命图腾",color:"green"},lore=[{text:"在拥有原版不死图腾效能基础上",color:"gray",italic:false},{text:"还会获得更多额外生命 以及60s生命回复",color:"gray",italic:false}],custom_data={kards:'生命图腾'}]
execute if score @s random_busituteng matches 3 run give @s minecraft:totem_of_undying[item_name={text:"暴怒图腾",color:"dark_red"},lore=[{text:"在拥有原版不死图腾效能基础上",color:"gray",italic:false},{text:"还会获得30s力量5速度3 10s无敌",color:"gray",italic:false}],custom_data={kards:'暴怒图腾'}]
execute if score @s random_busituteng matches 4 run give @s minecraft:totem_of_undying[item_name={text:"混沌图腾",color:"gray"},lore=[{text:"在拥有原版不死图腾效能基础上",color:"gray",italic:false},{text:"还会发生一些有趣的事情",color:"gray",italic:false}],custom_data={kards:'混沌图腾'}]
execute if score @s random_busituteng matches 5 run give @s minecraft:totem_of_undying[item_name={text:"冰冻图腾",color:"aqua"},lore=[{text:"在拥有原版不死图腾效能基础上",color:"gray",italic:false},{text:"还会冻结周围敌对生物 持续10s",color:"gray",italic:false}],custom_data={kards:'冰冻图腾'}]
execute if score @s random_busituteng matches 6 run give @s minecraft:totem_of_undying[item_name={text:"火焰图腾",color:"red"},lore=[{text:"在拥有原版不死图腾效能基础上",color:"gray",italic:false},{text:"还会永久点燃5格内敌对生物(玩家改为点燃15s)",color:"gray",italic:false}],custom_data={kards:'火焰图腾'}]

scoreboard players set @s random_busituteng 0
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 8
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
