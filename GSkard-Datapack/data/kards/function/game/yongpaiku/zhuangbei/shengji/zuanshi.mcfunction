execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.shengji.zuanshi.1",color:"aqua",hover_event:{action:"show_text","value":"获得一套钻石护甲"}}]
give @s minecraft:diamond_helmet[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.zuanshi.2",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:diamond_chestplate[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.zuanshi.3",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:diamond_leggings[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.zuanshi.4",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
give @s minecraft:diamond_boots[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.zuanshi.5",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 13
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1