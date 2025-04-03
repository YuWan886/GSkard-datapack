<<<<<<< HEAD
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zhuangbei.zhongchui.1",color:"gold"}]
give @s minecraft:mace[minecraft:item_name={translate: "game.yongpaiku.zhuangbei.zhongchui.2",color:"gray"},lore=[{translate: "game.yongpaiku.zhuangbei.zhongchui.3",color:"gray",italic:false},{translate: "game.yongpaiku.zhuangbei.xiajiehejinjian.4",color:"dark_gray",italic:true},{translate: "game.end.reset.11"},{translate: "game.start.wait_start.4",color:"gray",italic:false},{translate: "game.yongpaiku.shenji.wangzhibaoku.sishenzhilian.give.8",color:"dark_green",italic:false},{translate: "game.yongpaiku.zhuangbei.zhongchui.4",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:7,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-3.2,slot:"mainhand",operation:"add_value",id:"1"}],custom_data={kards:'重锤'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zhongchui kardCount
=======
execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[重锤]","color":"gold"}]
give @s minecraft:mace[minecraft:item_name='{"text":"重锤","color":"gray"}',lore=['{"text":"每击杀8只生物升级[最高6级]","color":"gray","italic":false}','{"text":"潜能无限","color":"dark_gray","italic":true}','{"text":""}','{"text":"在主手时：","color":"gray","italic":false}','{"text":" 7 攻击伤害","color":"dark_green","italic":false}','{"text":" 0.8 攻击速度","color":"dark_green","italic":false}'],minecraft:attribute_modifiers={modifiers:[{type:"attack_damage",amount:7,id:"",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-3.2,slot:"mainhand",operation:"add_value",id:""}],show_in_tooltip:0b},custom_data={kards:'重锤'},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 8
>>>>>>> c337d2e (加入一些卡牌)
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1