execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[铁剑]",color:"gold"}]
give @s minecraft:iron_sword[minecraft:item_name={text:"铁剑",color:"white"},lore=[{text:"每击杀15只生物升级[最高5级]",color:"gray",italic:false},{text:"还不错的铁剑",color:"dark_gray",italic:true},{text:""},{text:"在主手时：",color:"gray",italic:false},{text:" 7 攻击伤害",color:"dark_green",italic:false},{text:" 1.6 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:7,id:"",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-2.4,slot:"mainhand",operation:"add_value",id:""}],custom_data={kards:'铁剑'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
scoreboard players add @s jinjian 1
scoreboard players add @s tiejian 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 7
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1