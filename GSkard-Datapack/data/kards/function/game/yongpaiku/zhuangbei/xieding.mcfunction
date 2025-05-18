execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.xieding.1",color:"gold"}]
give @s minecraft:lightning_rod[item_name={translate: "game.yongpaiku.zhuangbei.xieding.2",color:"gray"},lore=[[{translate: "game.yongpaiku.zhuangbei.bianxiehuosai.3",color:"gray",italic:false}],[{translate: "game.end.reset.11",color:"gray",italic:false}],[{translate: "game.yongpaiku.zhuangbei.bianxiehuosai.4",color:"gray",italic:false}],[{translate: "game.yongpaiku.zhuangbei.xieding.3",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'鞋钉'}]

item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 4
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1