scoreboard players remove @s Death_Item 1

summon item ~ ~ ~ {Tags:["Player_Death_Item","Item_Start"],Item:{id:"music_disc_11",count:1}}

execute as @e[tag=Item_Start,type=item] store result score @s Item_Start_Count if entity @e[tag=Player_Death_Item]
tag @e[tag=Item_Start,type=item] remove Item_Start

execute if score @s Death_Item matches 1.. run function kards:game/player/death/item/2