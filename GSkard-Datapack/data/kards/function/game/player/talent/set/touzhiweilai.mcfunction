execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_touzhiweilai
scoreboard players add @s kardCountmax 30
scoreboard players add @s cishu 5
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"透支未来",color:"aqua",hover_event:{action:"show_text",value:[{text:"获得30Kmax 抽5张牌\n",color:"gold"},{text:"在本局游戏内",color:"gray"},{text:"你的Kmax不再在友方回合开始时增加",color:"red"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"透支未来",color:"aqua",hover_event:{action:"show_text",value:[{text:"获得30Kmax 抽5张牌\n",color:"gold"},{text:"在本局游戏内",color:"gray"},{text:"你的Kmax不再在友方回合开始时增加",color:"red"}]}}]