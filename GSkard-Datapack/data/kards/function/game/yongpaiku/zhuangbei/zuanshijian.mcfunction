execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[钻石剑]","color":"gold"}]
give @s minecraft:diamond_sword[minecraft:item_name='{"text":"钻石剑","color":"aqua"}',lore=['{"text":"每击杀20只生物升级[最高5级]","color":"gray","italic":false}','{"text":"锋芒初露","color":"dark_gray","italic":true}','{"text":""}','{"text":"在主手时：","color":"gray","italic":false}','{"text":" 8.5 攻击伤害","color":"dark_green","italic":false}','{"text":" 1.6 攻击速度","color":"dark_green","italic":false}'],minecraft:attribute_modifiers={modifiers:[{type:"attack_damage",amount:8.5,id:"",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-2.4,slot:"mainhand",operation:"add_value",id:""}],show_in_tooltip:0b},custom_data={kards:'钻石剑'},minecraft:unbreakable={show_in_tooltip:0b}]
scoreboard players add @s jinjian 1
scoreboard players add @s tiejian 1
scoreboard players add @s zuanshijian 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 10
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1