execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.zuanshifu.1",color:"gold"}]
give @s minecraft:diamond_axe[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.zuanshifu.2",color:"aqua"},lore=[{translate: "game.yongpaiku.zhuangbei.zuanshifu.3",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.zuanshifu.4",color:"dark_gray",italic:true},{translate: "game.end.reset.11"},{translate: "game.start.wait_start.4",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.zuanshifu.5",color:"dark_green",italic:false},{translate: "game.yongpaiku.zhuangbei.tiefu.6",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:11,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-3,slot:"mainhand",operation:"add_value",id:"1"}],custom_data={kards:'钻石斧'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zuanshifu kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1