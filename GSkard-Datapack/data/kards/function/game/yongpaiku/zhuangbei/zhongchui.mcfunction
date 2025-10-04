function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:mace[minecraft:custom_name={italic:false,text: "重锤",color:"gray"},lore=[{text: ""},{text: "在主手时：",color:"gray",italic:false},{text: " 10 攻击伤害",color:"dark_green",italic:false},{text: " 0.8 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:9,id:"1",operation:"add_value",slot:"mainhand",display:{type:"default"}},{type:"attack_speed",amount:-3.2,slot:"mainhand",operation:"add_value",id:"1",display:{type:"default"}}],custom_data={kards:'重锤'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zhongchui kardCount

