

function kards:game/yongpaiku/use_general/kard_general

give @s minecraft:dragon_breath[custom_name={italic:false,text: "龙息",color:"gold"},lore=[[{text: "F键以使用 一次性道具",color:"gold",italic:false}],[{text: "使用时净化友方所有实体的",color:"gray",italic:false},{text: "负面效果",color:"gold",italic:false},{text: " 并令5格内敌对生物",color:"gray",italic:false},{text: "飘浮",color:"red",italic:false}]],max_stack_size=1,custom_data={kards:'龙息'}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_longxi kardCount