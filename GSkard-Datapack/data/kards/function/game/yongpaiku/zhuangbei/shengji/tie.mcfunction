execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.shengji.tie.1",color:"white",hover_event:{action:"show_text","value":"获得一套铁护甲"}}]
give @s minecraft:iron_helmet[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.tie.2",color:"white"},minecraft:unbreakable={show_in_tooltip:0b}]
give @s minecraft:iron_chestplate[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.tie.3",color:"white"},minecraft:unbreakable={show_in_tooltip:0b}]
give @s minecraft:iron_leggings[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.tie.4",color:"white"},minecraft:unbreakable={show_in_tooltip:0b}]
give @s minecraft:iron_boots[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.shengji.tie.5",color:"white"},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 7
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1