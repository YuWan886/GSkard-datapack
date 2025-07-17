execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[金升级]",color:"gold",hover_event:{action:"show_text",value:"获得一套金护甲"}}]
function kards:game/yongpaiku/use_general/kard_general

give @s minecraft:golden_helmet[minecraft:custom_name={italic:false,text: "金头盔",color:"gold"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:golden_chestplate[minecraft:custom_name={italic:false,text: "金胸甲",color:"gold"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:golden_leggings[minecraft:custom_name={italic:false,text: "金护腿",color:"gold"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:golden_boots[minecraft:custom_name={italic:false,text: "金靴子",color:"gold"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jinshengji kardCount
