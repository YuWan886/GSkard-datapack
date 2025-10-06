execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_duichongjijin
scoreboard players add @s kardCountmax 16
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"对冲基金",color:"gold",hover_event:{action:"show_text",value:[{text:"立刻获得",color:"gray"},{text:"16Kmax\n",color:"gold"},{text:"友方回合开始时\n",color:"gray"},{text:"你每有8Kmax额外获得1Kmax",color:"gold"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"对冲基金",color:"gold",hover_event:{action:"show_text",value:[{text:"立刻获得",color:"gray"},{text:"16Kmax\n",color:"gold"},{text:"友方回合开始时\n",color:"gray"},{text:"你每有8Kmax额外获得1Kmax",color:"gold"}]}}]