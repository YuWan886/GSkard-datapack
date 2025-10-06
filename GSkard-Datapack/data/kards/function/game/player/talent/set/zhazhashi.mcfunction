execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_zhazhashi
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"扎扎师。",color:"gold",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"你每次受到伤害",color:"red"},{text:"有",color:"gray"},{text:"12%的概率抽一张牌",color:"gold"},{text:"每秒最多触发20次",color:"dark_gray"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"扎扎师。",color:"gold",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"你每次受到伤害",color:"red"},{text:"有",color:"gray"},{text:"12%的概率抽一张牌",color:"gold"},{text:"每秒最多触发20次",color:"dark_gray"}]}}]