execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[重锤]","color":"gold"}]
give @s minecraft:mace[minecraft:item_name='{"text":"重锤","color":"gray"}',lore=['{"text":"每击杀8只生物升级[最高6级]","color":"gray","italic":false}','{"text":"潜能无限","color":"dark_gray","italic":true}','{"text":""}','{"text":"在主手时：","color":"gray","italic":false}','{"text":" 7 攻击伤害","color":"dark_green","italic":false}','{"text":" 0.8 攻击速度","color":"dark_green","italic":false}'],minecraft:attribute_modifiers={modifiers:[{type:"attack_damage",amount:7,id:"",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-3.2,slot:"mainhand",operation:"add_value",id:""}],show_in_tooltip:0b},custom_data={kards:'重锤'},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 8
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1