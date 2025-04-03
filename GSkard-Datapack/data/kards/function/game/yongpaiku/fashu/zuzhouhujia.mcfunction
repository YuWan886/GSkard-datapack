<<<<<<< HEAD
execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.fashu.zuzhouhujia.1",color:"dark_purple",hover_event:{action:"show_text","value":"随机对敌方一名敌人和胸甲替换成 诅咒护甲 无法脱下 并且有额外减益效果"}}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zuzhouhujia kardCount
=======
execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[诅咒护甲]","color":"dark_purple","hoverEvent":{"action":"show_text","value":"随机对敌方一名敌人和胸甲替换成 诅咒护甲 无法脱下 并且有额外减益效果"}}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 5
>>>>>>> c337d2e (加入一些卡牌)
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
function kards:game/yongpaiku/xianjin/jiance/fashujiance
execute if entity @s[team=red] if score 红队 xianjin_shufashixiao matches 1 run return run scoreboard players set 红队 xianjin_shufashixiao 0
execute if entity @s[team=blue] if score 蓝队 xianjin_shufashixiao matches 1 run return run scoreboard players set 蓝队 xianjin_shufashixiao 0
execute if entity @s[team=red] if score 红队 xianjin_youdi matches 1 run return run scoreboard players set 红队 xianjin_youdi 0
execute if entity @s[team=blue] if score 蓝队 xianjin_youdi matches 1 run return run scoreboard players set 蓝队 xianjin_youdi 0

#红
<<<<<<< HEAD
execute if entity @s[team=red] as @r[team=blue] run item replace entity @s armor.chest with golden_chestplate[custom_name=["",{translate: "game.yongpaiku.fashu.zuzhouhujia.2",italic:false}],enchantments={binding_curse:1,unbreaking:1},attribute_modifiers=[{type:armor,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:attack_damage,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:attack_speed,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:movement_efficiency,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"}]]
#蓝
execute if entity @s[team=blue] as @r[team=red] run item replace entity @s armor.chest with golden_chestplate[custom_name=["",{translate: "game.yongpaiku.fashu.zuzhouhujia.2",italic:false}],enchantments={binding_curse:1,unbreaking:1},attribute_modifiers=[{type:armor,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:attack_damage,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:attack_speed,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:movement_efficiency,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"}]]
=======
execute if entity @s[team=red] as @r[team=blue] run item replace entity @s armor.chest with golden_chestplate[custom_name='["",{"text":"诅咒护甲","italic":false}]',enchantments={levels:{binding_curse:1,unbreaking:1}},attribute_modifiers={modifiers:[{type:armor,amount:-0.5,slot:chest,operation:add_multiplied_total,id:1737366850050},{type:attack_damage,amount:-0.5,slot:chest,operation:add_multiplied_total,id:1737366850050},{type:attack_speed,amount:-0.5,slot:chest,operation:add_multiplied_total,id:1737366850050},{type:movement_efficiency,amount:-0.5,slot:chest,operation:add_multiplied_total,id:1737366850050}]}]
#蓝
execute if entity @s[team=blue] as @r[team=red] run item replace entity @s armor.chest with golden_chestplate[custom_name='["",{"text":"诅咒护甲","italic":false}]',enchantments={levels:{binding_curse:1,unbreaking:1}},attribute_modifiers={modifiers:[{type:armor,amount:-0.5,slot:chest,operation:add_multiplied_total,id:1737366850050},{type:attack_damage,amount:-0.5,slot:chest,operation:add_multiplied_total,id:1737366850050},{type:attack_speed,amount:-0.5,slot:chest,operation:add_multiplied_total,id:1737366850050},{type:movement_efficiency,amount:-0.5,slot:chest,operation:add_multiplied_total,id:1737366850050}]}]
>>>>>>> c337d2e (加入一些卡牌)


