

function kards:game/yongpaiku/use_general/kard_general

give @s minecraft:netherite_sword[minecraft:custom_name={italic:false,text: "下界合金剑",color:"dark_gray"},lore=[{text: "每击杀25只生物升级[最高10级]",color:"gray",italic:false},{text: "潜能无限",color:"dark_gray",italic:true},{text: ""},{text: "在主手时：",color:"gray",italic:false},{text: " 12 攻击伤害",color:"dark_green",italic:false},{text: " 1.6 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:12,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-2.4,slot:"mainhand",operation:"add_value",id:"1"}],minecraft:unbreakable={},custom_data={kards:'下界合金剑'},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiajiehejinjian kardCount
