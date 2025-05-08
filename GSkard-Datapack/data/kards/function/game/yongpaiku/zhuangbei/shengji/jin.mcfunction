execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.shengji.jin.1",color:"gold",hover_event:{action:"show_text","value":"获得一套金护甲"}}]
give @s minecraft:golden_helmet[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.jin.2",color:"gold"},minecraft:unbreakable={show_in_tooltip:0b}]
give @s minecraft:golden_chestplate[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.jin.3",color:"gold"},minecraft:unbreakable={show_in_tooltip:0b}]
give @s minecraft:golden_leggings[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.jin.4",color:"gold"},minecraft:unbreakable={show_in_tooltip:0b}]
give @s minecraft:golden_boots[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.jin.5",color:"gold"},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 4
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1