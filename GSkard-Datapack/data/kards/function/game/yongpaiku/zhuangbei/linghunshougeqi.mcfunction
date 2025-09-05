function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:cauldron[custom_name={italic:false,text: "灵魂收割器",color:"dark_purple"},lore=[[{text: "放在背包最右侧一列佩戴 同个配件只生效一个",color:"gray",italic:false}],[{text: "",color:"gray",italic:false}],[{text: "佩戴时：",color:"gray",italic:false}],[{text: "+1 击杀经验获取",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'灵魂收割器'}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_linghunshougeqi kardCount
