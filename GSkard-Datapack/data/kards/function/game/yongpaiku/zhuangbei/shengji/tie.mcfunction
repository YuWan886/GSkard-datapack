execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[铁升级]",color:"white",hover_event:{action:"show_text",value:"获得一套铁护甲"}}]
give @s minecraft:iron_helmet[minecraft:item_name={text: "铁头盔",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:iron_chestplate[minecraft:item_name={text: "铁胸甲",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:iron_leggings[minecraft:item_name={text: "铁护腿",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:iron_boots[minecraft:item_name={text: "铁靴子",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tieshengji kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1