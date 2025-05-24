execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.posuijianren.1",color:"gold"}]
give @s minecraft:prismarine_shard[item_name={translate: "game.yongpaiku.zhuangbei.posuijianren.2",color:"dark_gray"},lore=[[{translate: "game.yongpaiku.zhuangbei.bianxiehuosai.3",color:"gray",italic:false}],[{translate: "game.end.reset.11",color:"gray",italic:false}],[{translate: "game.yongpaiku.zhuangbei.bianxiehuosai.4",color:"gray",italic:false}],[{translate: "game.yongpaiku.zhuangbei.posuijianren.3",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'破碎剑刃'}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_posuijianren kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1