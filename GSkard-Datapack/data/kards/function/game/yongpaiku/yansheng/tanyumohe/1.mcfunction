function kards:game/yongpaiku/use_general/tellraw

clear @s beetroot_soup[custom_data~{kards:'贪欲'}] 1
scoreboard players operation @s kardCount -= #kard_tanyu kardCount

scoreboard players add @s[tag=Talent_bujintanyu] Talent_bujintanyu 1

execute if entity @s[team=red,tag=!Talent_bujintanyu] run scoreboard players add 红队 tanyu 1
execute if entity @s[team=blue,tag=!Talent_bujintanyu] run scoreboard players add 蓝队 tanyu 1

execute if entity @s[team=red,tag=Talent_bujintanyu,scores={Talent_bujintanyu=2}] run scoreboard players add 红队 tanyu 1
execute if entity @s[team=blue,tag=Talent_bujintanyu,scores={Talent_bujintanyu=2}] run scoreboard players add 蓝队 tanyu 1
scoreboard players reset @s[tag=Talent_bujintanyu,scores={Talent_bujintanyu=2}] Talent_bujintanyu

execute if entity @s[team=red] run scoreboard players add 红队 tanyu_temp_2 1
execute if entity @s[team=blue] run scoreboard players add 蓝队 tanyu_temp_2 1
execute if entity @s[team=red] run tellraw @a [{text: "目前",color:"white"},{text: "红队",color:"red"},{text: "使用次数为:",color:"white"},{score:{objective:"tanyu",name:"红队"},color:"green",bold:false}]
execute if entity @s[team=blue] run tellraw @a [{text: "目前",color:"white"},{text: "蓝队",color:"blue"},{text: "使用次数为:",color:"white"},{score:{objective:"tanyu",name:"蓝队"},color:"green",bold:false}]

execute if entity @s[team=red] if score 红队 tanyu matches 27 run title @a times 10t 3s 10t
execute if entity @s[team=blue] if score 蓝队 tanyu matches 27 run title @a times 10t 3s 10t
execute if entity @s[team=red] if score 红队 tanyu matches 27 run title @a title [{text: "§k开",color:"gray"},{text: "潘多拉魔盒开启",color:"red"},{text: "§k开",color:"gray"}]
execute if entity @s[team=blue] if score 蓝队 tanyu matches 27 run title @a title [{text: "§k开",color:"gray"},{text: "潘多拉魔盒开启",color:"blue"},{text: "§k开",color:"gray"}]
execute if entity @s[team=red] if score 红队 tanyu matches 27 as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 100 2
execute if entity @s[team=blue] if score 蓝队 tanyu matches 27 as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 100 2

scoreboard players set #system tanyu_temp 9
execute if entity @s[team=red] run scoreboard players operation 红队 tanyu_temp_1 = 红队 tanyu
execute if entity @s[team=blue] run scoreboard players operation 蓝队 tanyu_temp_1 = 蓝队 tanyu
execute if entity @s[team=red] run scoreboard players operation 红队 tanyu_temp_1 /= #system tanyu_temp
execute if entity @s[team=blue] run scoreboard players operation 蓝队 tanyu_temp_1 /= #system tanyu_temp
execute if entity @s[team=red] if score 红队 tanyu_temp_1 matches 1.. run function kards:game/yongpaiku/yansheng/tanyumohe/2
execute if entity @s[team=blue] if score 蓝队 tanyu_temp_1 matches 1.. run function kards:game/yongpaiku/yansheng/tanyumohe/3

execute if entity @s[team=red] if score 红队 tanyu_temp_2 matches 9 run tellraw @a [{text:"[贪欲魔盒]",color:"gold"},{text:"红队",color:"red"},{text:"罪恶值已达至第",color:"gray"},{score:{name:"红队",objective:"tanyu_temp_1"},color:"red"},{text:"层",color:"gray"}]
execute if entity @s[team=blue] if score 蓝队 tanyu_temp_2 matches 9 run tellraw @a [{text:"[贪欲魔盒]",color:"gold"},{text:"蓝队",color:"blue"},{text:"罪恶值已达至第",color:"gray"},{score:{name:"蓝队",objective:"tanyu_temp_1"},color:"red"},{text:"层",color:"gray"}]
execute if entity @s[team=red] if score 红队 tanyu_temp_2 matches 9 as @a at @s run playsound dogdoing player @s ~ ~ ~ 100 1
execute if entity @s[team=blue] if score 蓝队 tanyu_temp_2 matches 9 as @a at @s run playsound dogdoing player @s ~ ~ ~ 100 1

execute if entity @s[team=red] if score 红队 tanyu_temp_2 matches 9 run scoreboard players reset 红队 tanyu_temp_2
execute if entity @s[team=blue] if score 蓝队 tanyu_temp_2 matches 9 run scoreboard players reset 蓝队 tanyu_temp_2


scoreboard players add @s kardCount 2
scoreboard players add @s tanyumohe_cishu 1