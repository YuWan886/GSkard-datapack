execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.tiefu.1",color:"gold"}]
give @s minecraft:iron_axe[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.tiefu.2",color:"white"},lore=[{translate: "game.yongpaiku.zhuangbei.tiefu.3",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.tiefu.4",color:"dark_gray",italic:true},{translate: "game.end.reset.11"},{translate: "game.start.wait_start.4",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.tiefu.5",color:"dark_green",italic:false},{translate: "game.yongpaiku.zhuangbei.tiefu.6",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:9,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-3,slot:"mainhand",operation:"add_value",id:"1"}],custom_data={kards:'铁斧'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tiefu kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1