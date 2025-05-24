execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.tiejian.1",color:"gold"}]
give @s minecraft:iron_sword[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.tiejian.2",color:"white"},lore=[{translate: "game.yongpaiku.zhuangbei.tiejian.3",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.tiejian.4",color:"dark_gray",italic:true},{translate: "game.end.reset.11"},{translate: "game.start.wait_start.4",color:"gray",italic:false},{translate: "game.yongpaiku.shenji.wangzhibaoku.sishenzhilian.give.8",color:"dark_green",italic:false},{translate: "game.yongpaiku.shenji.wangzhibaoku.shizhongjian.give.13",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:7,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-2.4,slot:"mainhand",operation:"add_value",id:"1"}],custom_data={kards:'铁剑'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
scoreboard players add @s jinjian 1
scoreboard players add @s tiejian 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tiejian kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1