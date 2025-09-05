function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:sticky_piston[custom_name={italic:false,text: "便携活塞",color:"green"},lore=[[{text: "放在背包最右侧一列佩戴 同个配件只生效一个",color:"gray",italic:false}],[{text: "",color:"gray",italic:false}],[{text: "佩戴时：",color:"gray",italic:false}],[{text: "+1 击退",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'便携活塞'}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_bianxiehuosai kardCount
