execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[铁升级]",color:"white",hover_event:{action:"show_text",value:"获得一套铁护甲"}}]
function kards:game/yongpaiku/use_general/kard_general

give @s minecraft:iron_helmet[minecraft:custom_name={italic:false,text: "铁头盔",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:iron_chestplate[minecraft:custom_name={italic:false,text: "铁胸甲",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:iron_leggings[minecraft:custom_name={italic:false,text: "铁护腿",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:iron_boots[minecraft:custom_name={italic:false,text: "铁靴子",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tieshengji kardCount
