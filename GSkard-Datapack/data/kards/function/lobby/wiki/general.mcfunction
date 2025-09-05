#execute as @a store result score @s wiki_count run clear @s bookshelf[custom_data={kards:"shelf"}] 0
#execute as @a unless score @s wiki_count matches 1 run clear @s bookshelf[custom_data={kards:"shelf"}]

#execute as @a if score @s wiki matches 0 run dialog show @s kards:paiku/main
#execute as @a if score @s wiki matches 0 at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 2

#kill @e[type=item,nbt={Item:{id:"minecraft:bookshelf",components:{"minecraft:custom_data":{kards:"shelf"}}}}]

#execute as @a unless items entity @s container.9 minecraft:bookshelf run clear @s bookshelf[custom_data={kards:"shelf"}]
#execute as @a unless items entity @s container.9 minecraft:bookshelf at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 2
#execute as @a unless items entity @s container.9 minecraft:bookshelf run kill @e[type=item,nbt={Item:{id:"minecraft:bookshelf",components:{"minecraft:custom_data":{kards:"shelf"}}}}]
#execute as @a unless items entity @s container.9 minecraft:bookshelf run dialog show @s kards:paiku/main

item replace entity @a container.9 with minecraft:bookshelf[minecraft:item_name=[{text: "地图牌库大全",color:"gold",bold:true}],custom_data={kards:"shelf"}]

execute as @a if score @s open_wiki matches 1 run dialog show @s kards:paiku/main
execute as @a if score @s open_wiki matches 1 run scoreboard players set @s open_wiki 0

execute as @a store result score @s wiki_count run clear @s bookshelf[custom_data={kards:"shelf"}] 0
execute as @a unless score @s wiki_count matches 1 run clear @s bookshelf[custom_data={kards:"shelf"}]
kill @e[type=item,nbt={Item:{id:"minecraft:bookshelf",components:{"minecraft:custom_data":{kards:"shelf"}}}}]