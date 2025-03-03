execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[鞋钉]",color:"gold"}]
give @s minecraft:lightning_rod[item_name={text:"鞋钉",color:"gray"},lore=[[{text:"放在背包最右侧一列佩戴 同个配件只生效一个",color:"gray",italic:false}],[{text:"",color:"gray",italic:false}],[{text:"佩戴时：",color:"gray",italic:false}],[{text:"+0.2 击退抗性",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'鞋钉'}]

item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 4
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1