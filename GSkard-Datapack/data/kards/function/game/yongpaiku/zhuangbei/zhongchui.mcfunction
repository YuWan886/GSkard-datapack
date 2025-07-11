execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[重锤]",color:"gold"}]
function kards:game/yongpaiku/use_general/kard_general
give @s minecraft:mace[minecraft:custom_name={italic:false,text: "重锤",color:"gray"},lore=[{text: "每击杀12只生物升级[最高6级]",color:"gray",italic:false},{text: "潜能无限",color:"dark_gray",italic:true},{text: ""},{text: "在主手时：",color:"gray",italic:false},{text: " 5 攻击伤害",color:"dark_green",italic:false},{text: " 0.8 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:5,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-3.2,slot:"mainhand",operation:"add_value",id:"1"}],custom_data={kards:'重锤'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zhongchui kardCount
