function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:iron_sword[minecraft:custom_name={italic:false,text: "铁剑",color:"white"},lore=[{text: "还不错的铁剑",color:"dark_gray",italic:true},{text: ""},{text: "在主手时：",color:"gray",italic:false},{text: " 7 攻击伤害",color:"dark_green",italic:false},{text: " 1.6 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:6,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-2.4,slot:"mainhand",operation:"add_value",id:"1"}],custom_data={kards:'铁剑'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
scoreboard players add @s jinjian 1
scoreboard players add @s tiejian 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tiejian kardCount
