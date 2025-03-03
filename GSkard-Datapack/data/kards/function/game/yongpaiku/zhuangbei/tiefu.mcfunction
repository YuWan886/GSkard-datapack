execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[铁斧]",color:"gold"}]
give @s minecraft:iron_axe[minecraft:item_name={text:"铁斧",color:"white"},lore=[{text:"每击杀15只生物升级[最高3级]",color:"gray",italic:false},{text:"算得上趁手",color:"dark_gray",italic:true},{text:""},{text:"在主手时：",color:"gray",italic:false},{text:" 9 攻击伤害",color:"dark_green",italic:false},{text:" 1 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:9,id:"",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-3,slot:"mainhand",operation:"add_value",id:""}],custom_data={kards:'铁斧'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]

item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 8
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1