execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.jinjian.1",color:"gold"}]
give @s minecraft:golden_sword[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.jinjian.2",color:"gold"},lore=[{translate: "game.start.wait_start.2",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.jinjian.3",color:"dark_gray",italic:true},{translate: "game.end.reset.11"},{translate: "game.start.wait_start.4",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.jinjian.4",color:"dark_green",italic:false},{translate: "game.yongpaiku.shenji.wangzhibaoku.shizhongjian.give.13",color:"dark_green",italic:false}],minecraft:attribute_modifiers={modifiers:[{type:"attack_damage",amount:6,id:"",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-2.4,slot:"mainhand",operation:"add_value",id:""}],show_in_tooltip:0b},custom_data={kards:'金剑'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
scoreboard players add @s jinjian 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 5
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1