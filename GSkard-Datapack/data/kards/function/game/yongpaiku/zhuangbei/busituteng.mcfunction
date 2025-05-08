execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.busituteng.1",color:"gold"}]
execute store result score @s random_busituteng run random value 1..6
execute if score @s random_busituteng matches 1 run give @s minecraft:totem_of_undying[item_name={translate: "game.yongpaiku.zhuangbei.busituteng.2",color:"red"},lore=[{translate: "game.yongpaiku.zhuangbei.busituteng.3",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.busituteng.4",color:"gray",italic:false}],custom_data={kards:'自爆图腾'}]
execute if score @s random_busituteng matches 2 run give @s minecraft:totem_of_undying[item_name={translate: "game.yongpaiku.zhuangbei.busituteng.5",color:"green"},lore=[{translate: "game.yongpaiku.yansheng.totem.hundun.5.3",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.busituteng.6",color:"gray",italic:false}],custom_data={kards:'生命图腾'}]
execute if score @s random_busituteng matches 3 run give @s minecraft:totem_of_undying[item_name={translate: "game.yongpaiku.zhuangbei.busituteng.7",color:"dark_red"},lore=[{translate: "game.yongpaiku.yansheng.totem.hundun.5.3",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.busituteng.8",color:"gray",italic:false}],custom_data={kards:'暴怒图腾'}]
execute if score @s random_busituteng matches 4 run give @s minecraft:totem_of_undying[item_name={translate: "game.yongpaiku.yansheng.totem.hundun.5.2",color:"gray"},lore=[{translate: "game.yongpaiku.yansheng.totem.hundun.5.3",color:"gray",italic:false},{translate: "game.yongpaiku.yansheng.totem.hundun.5.4",color:"gray",italic:false}],custom_data={kards:'混沌图腾'}]
execute if score @s random_busituteng matches 5 run give @s minecraft:totem_of_undying[item_name={translate: "game.yongpaiku.zhuangbei.busituteng.9",color:"aqua"},lore=[{translate: "game.yongpaiku.yansheng.totem.hundun.5.3",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.busituteng.10",color:"gray",italic:false}],custom_data={kards:'冰冻图腾'}]
execute if score @s random_busituteng matches 6 run give @s minecraft:totem_of_undying[item_name={translate: "game.yongpaiku.zhuangbei.busituteng.11",color:"red"},lore=[{translate: "game.yongpaiku.yansheng.totem.hundun.5.3",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.busituteng.12",color:"gray",italic:false}],custom_data={kards:'火焰图腾'}]

scoreboard players set @s random_busituteng 0
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 8
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
