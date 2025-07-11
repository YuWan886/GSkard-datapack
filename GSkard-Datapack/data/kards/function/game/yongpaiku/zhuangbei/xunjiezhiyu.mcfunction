execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[迅捷之羽]",color:"gold"}]
function kards:game/yongpaiku/use_general/kard_general
give @s minecraft:feather[custom_name={italic:false,text: "迅捷之羽",color:"white"},lore=[[{text: "放在背包最右侧一列佩戴 同个配件只生效一个",color:"gray",italic:false}],[{text: "",color:"gray",italic:false}],[{text: "佩戴时：",color:"gray",italic:false}],[{text: "+20% 移动速度",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'迅捷之羽'}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xunjiezhiyu kardCount
