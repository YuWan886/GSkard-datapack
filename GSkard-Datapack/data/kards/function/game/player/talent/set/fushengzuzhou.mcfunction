
execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_fushengzuzhou
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"复生诅咒",color:"red",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"你",color:"gray"},{text:"第1次死亡后复活\n",color:"gold"},{text:"并",color:"gray"},{text:"恢复所有生命值",color:"green"},{text:"且获得",color:"gray"},{text:"5s抗性提升5\n\n",color:"gold"},{text:"复活后",color:"gray"},{text:"你的Kmax不再在友方回合开始时增加 最大生命减少20%",color:"red"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"复生诅咒",color:"red",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"你",color:"gray"},{text:"第1次死亡后复活\n",color:"gold"},{text:"并",color:"gray"},{text:"恢复所有生命值",color:"green"},{text:"且获得",color:"gray"},{text:"5s抗性提升5\n\n",color:"gold"},{text:"复活后",color:"gray"},{text:"你的Kmax不再在友方回合开始时增加 最大生命减少20%",color:"red"}]}}]