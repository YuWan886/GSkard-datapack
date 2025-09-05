
scoreboard players add @s jinzijue 1
execute if score @s jinzijue matches 1 run attribute @s minecraft:max_health base set 200
execute if score @s jinzijue matches 1 run attribute @s minecraft:max_health modifier add 0-0-1 -20 add_value
execute if score @s jinzijue matches 2 run attribute @s minecraft:max_health modifier add 0-0-2 -20 add_value
execute if score @s jinzijue matches 3 run attribute @s minecraft:max_health modifier add 0-0-3 -20 add_value
execute if score @s jinzijue matches 4 run attribute @s minecraft:max_health modifier add 0-0-4 -20 add_value
execute if score @s jinzijue matches 5 run attribute @s minecraft:max_health modifier add 0-0-5 -20 add_value
execute if score @s jinzijue matches 6 run attribute @s minecraft:max_health modifier add 0-0-6 -20 add_value
execute if score @s jinzijue matches 6 run effect give @s absorption 30 9 false
execute if score @s jinzijue matches 7 run attribute @s minecraft:max_health modifier add 0-0-7 -20 add_value
execute if score @s jinzijue matches 7 run tag @s add jinzijue
execute if score @s jinzijue matches 8 run attribute @s minecraft:max_health modifier add 0-0-8 -20 add_value
execute if score @s jinzijue matches 9 run attribute @s minecraft:max_health modifier add 0-0-9 -20 add_value
execute if score @s jinzijue matches 10 run attribute @s minecraft:max_health modifier add 0-0-10 500 add_value
execute if score @s jinzijue matches 10 run scoreboard players set @a jinziqifeng 0
tellraw @a [{text: "禁字诀层数:",color:"dark_red",bold:false},{score:{objective:"jinzijue",name:"@s"},color:"green",bold:false}]
execute if score @s jinzijue matches 10 run tellraw @a [{selector:"@s"},{text: "禁字大成 所有人的禁字决抽取概率设为0% 无法再使用禁字决",color:"dark_red"}]

