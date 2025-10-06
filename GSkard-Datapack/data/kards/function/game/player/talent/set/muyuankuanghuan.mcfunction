execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_muyuankuanghuan
scoreboard players set @s muyuankuanghuan 1
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"墓园狂欢",color:"white",hover_event:{action:"show_text",value:[{text:"视为你使用了",color:"gray"},{text:"[墓园狂欢]\n",color:"white"},{text:"每回合开始时 无消耗自动使用5张",color:"gray"},{text:"<狂欢僵尸>",color:"blue"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"墓园狂欢",color:"white",hover_event:{action:"show_text",value:[{text:"视为你使用了",color:"gray"},{text:"[墓园狂欢]\n",color:"white"},{text:"每回合开始时 无消耗自动使用5张",color:"gray"},{text:"<狂欢僵尸>",color:"blue"}]}}]