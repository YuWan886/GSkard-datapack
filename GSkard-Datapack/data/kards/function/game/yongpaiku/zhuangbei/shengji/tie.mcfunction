execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.shengji.tie.1",color:"white",hover_event:{action:"show_text","value":"获得一套铁护甲"}}]
give @s minecraft:iron_helmet[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.tie.2",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:iron_chestplate[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.tie.3",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:iron_leggings[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.tie.4",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:iron_boots[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.tie.5",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tieshengji kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1