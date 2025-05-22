execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.haiguilinjia.1",color:"gold"}]
give @s minecraft:turtle_scute[item_name={translate: "game.yongpaiku.zhuangbei.haiguilinjia.2",color:"gold"},lore=[[{translate: "game.yongpaiku.zhuangbei.bianxiehuosai.3",color:"gray",italic:false}],[{translate: "game.end.reset.11",color:"gray",italic:false}],[{translate: "game.yongpaiku.zhuangbei.bianxiehuosai.4",color:"gray",italic:false}],[{translate: "game.yongpaiku.shenji.wangzhibaoku.kunanyaolan.give.7",color:"blue",italic:false}],[{translate: "game.yongpaiku.zhuangbei.haiguilinjia.3",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'海龟鳞甲'}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_haiguilinjia kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1