execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[龙息]",color:"gold",hover_event:{action:"show_text",value:"获得一瓶龙息 一次性道具 可在任意时刻使用"}}]
give @s minecraft:dragon_breath[item_name={text:"龙息",color:"gold"},lore=[[{text:"F键以使用 一次性道具",color:"gold",italic:false}],[{text:"使用时净化友方所有实体的",color:"gray",italic:false},{text:"负面效果",color:"gold",italic:false},{text:" 并令5格内敌对生物",color:"gray",italic:false},{text:"飘浮",color:"red",italic:false}]],max_stack_size=1,custom_data={kards:'龙息'}]

item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 3