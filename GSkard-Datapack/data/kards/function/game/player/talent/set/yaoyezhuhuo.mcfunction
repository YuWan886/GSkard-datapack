execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_yaoyezhuhuo
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"摇曳烛火",color:"dark_red",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"每有1个队友死亡",color:"gold"},{text:" 每个友方回合开始时\n",color:"gray"},{text:"+25经验+8♥生命恢复+额外抽1张牌",color:"gold"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"摇曳烛火",color:"dark_red",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"每有1个队友死亡",color:"gold"},{text:" 每个友方回合开始时\n",color:"gray"},{text:"+25经验+8♥生命恢复+额外抽1张牌",color:"gold"}]}}]