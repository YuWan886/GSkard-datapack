execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[钻石升级]",color:"aqua",hover_event:{action:"show_text","value":"获得一套钻石护甲"}}]
give @s minecraft:diamond_helmet[minecraft:item_name={text: "钻石头盔",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:diamond_chestplate[minecraft:item_name={text: "钻石胸甲",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:diamond_leggings[minecraft:item_name={text: "钻石护腿",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:diamond_boots[minecraft:item_name={text: "钻石靴子",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zuanshishengji kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1