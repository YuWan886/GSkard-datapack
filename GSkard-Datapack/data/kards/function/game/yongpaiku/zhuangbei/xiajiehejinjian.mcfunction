execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[下界合金剑]","color":"gold"}]
give @s minecraft:netherite_sword[minecraft:item_name='{"text":"下界合金剑","color":"dark_gray"}',lore=['{"text":"每击杀25只生物升级[最高10级]","color":"gray","italic":false}','{"text":"潜能无限","color":"dark_gray","italic":true}','{"text":""}','{"text":"在主手时：","color":"gray","italic":false}','{"text":" 12 攻击伤害","color":"dark_green","italic":false}','{"text":" 1.6 攻击速度","color":"dark_green","italic":false}'],minecraft:attribute_modifiers={modifiers:[{type:"attack_damage",amount:12,id:"",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-2.4,slot:"mainhand",operation:"add_value",id:""}],show_in_tooltip:0b},custom_data={kards:'下界合金剑'},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 12
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1