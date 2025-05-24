execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[海龟鳞甲]",color:"gold"}]
give @s minecraft:turtle_scute[item_name={text: "海龟鳞甲",color:"gold"},lore=[[{text: "放在背包最右侧一列佩戴 同个配件只生效一个",color:"gray",italic:false}],[{text: "",color:"gray",italic:false}],[{text: "佩戴时：",color:"gray",italic:false}],[{text: "+5 护甲值",color:"blue",italic:false}],[{text: "+1 盔甲韧性",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'海龟鳞甲'}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_haiguilinjia kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1