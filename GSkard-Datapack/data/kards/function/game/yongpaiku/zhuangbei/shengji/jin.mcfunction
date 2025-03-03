execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[金升级]",color:"gold",hover_event:{action:"show_text",value:"获得一套金护甲"}}]
give @s minecraft:golden_helmet[minecraft:item_name={text:"金头盔",color:"gold"},minecraft:unbreakable={}]
give @s minecraft:golden_chestplate[minecraft:item_name={text:"金胸甲",color:"gold"},minecraft:unbreakable={}]
give @s minecraft:golden_leggings[minecraft:item_name={text:"金护腿",color:"gold"},minecraft:unbreakable={}]
give @s minecraft:golden_boots[minecraft:item_name={text:"金靴子",color:"gold"},minecraft:unbreakable={}]
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 4
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1