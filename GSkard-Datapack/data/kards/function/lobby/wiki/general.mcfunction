item replace entity @a container.9 with minecraft:cartography_table[minecraft:item_name=[{text: "地图介绍及牌库大全",color:"gold",bold:true},{text: "(Q键丢出)",color:"gray",bold:false}]]
execute as @a store result score @s wiki_count run clear @s cartography_table 0
execute as @a unless score @s wiki_count matches 1 run clear @s cartography_table
kill @e[type=item,nbt={Item:{id:"minecraft:cartography_table"}}]

execute as @a if score @s wiki matches 1 run tellraw @s [{text: "[点我打开GSkard神秘小链接~]",color:"gold",bold:true,click_event:{action:"open_url","value":"https://docs.qq.com/doc/DY0RiSmROZVRaRmRY"},hover_event:{action:"show_text","value":"地图介绍以及牌库大全"}}]
execute as @a if score @s wiki matches 1 at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 2
execute as @a if score @s wiki matches 1 run scoreboard players set @s wiki 0