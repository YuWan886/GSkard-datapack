execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[金剑]",color:"gold"}]
give @s minecraft:golden_sword[minecraft:item_name={text:"金剑",color:"gold"},lore=[{text:"每击杀10只生物升级[最高5级]",color:"gray",italic:false},{text:"比金胡萝卜强一点",color:"dark_gray",italic:true},{text:""},{text:"在主手时：",color:"gray",italic:false},{text:" 6 攻击伤害",color:"dark_green",italic:false},{text:" 1.6 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:6,id:"",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-2.4,slot:"mainhand",operation:"add_value",id:""}],custom_data={kards:'金剑'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
scoreboard players add @s jinjian 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 5
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1