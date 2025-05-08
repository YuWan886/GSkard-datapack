execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.zuanshijian.1",color:"gold"}]
give @s minecraft:diamond_sword[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.zuanshijian.2",color:"aqua"},lore=[{translate: "game.yongpaiku.zhuangbei.zuanshijian.3",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.zuanshijian.4",color:"dark_gray",italic:true},{translate: "game.end.reset.11"},{translate: "game.start.wait_start.4",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.zuanshijian.5",color:"dark_green",italic:false},{translate: "game.yongpaiku.shenji.wangzhibaoku.shizhongjian.give.13",color:"dark_green",italic:false}],minecraft:attribute_modifiers={modifiers:[{type:"attack_damage",amount:8.5,id:"",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-2.4,slot:"mainhand",operation:"add_value",id:""}],show_in_tooltip:0b},custom_data={kards:'钻石剑'},minecraft:unbreakable={show_in_tooltip:0b}]
scoreboard players add @s jinjian 1
scoreboard players add @s tiejian 1
scoreboard players add @s zuanshijian 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 10
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1