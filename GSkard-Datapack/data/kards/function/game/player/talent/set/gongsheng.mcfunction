execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_gongsheng
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"共生",color:"aqua",hover_event:{action:"show_text",value:[{text:"友方回合开始时\n",color:"gray"},{text:"计算你的生命值与队伍中生命值最高的玩家的差值\n",color:"gold"},{text:"获得等量的生命恢复\n",color:"green"},{text:"受重伤影响\n\n",color:"dark_gray"},{text:"但你的生命值将不能再高于场上生命值最高的队友\n",color:"red"},{text:"且任意队友死亡后你也会死亡",color:"red"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"共生",color:"aqua",hover_event:{action:"show_text",value:[{text:"友方回合开始时\n",color:"gray"},{text:"计算你的生命值与队伍中生命值最高的玩家的差值\n",color:"gold"},{text:"获得等量的生命恢复\n",color:"green"},{text:"受重伤影响\n\n",color:"dark_gray"},{text:"但你的生命值将不能再高于场上生命值最高的队友\n",color:"red"},{text:"且任意队友死亡后你也会死亡",color:"red"}]}}]