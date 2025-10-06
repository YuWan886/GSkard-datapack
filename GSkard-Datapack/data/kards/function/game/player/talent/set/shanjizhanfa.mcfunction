execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_shanjizhanfa
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"闪击战法",color:"aqua",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"你每次使用",color:"gold"},{text:"[基本牌]",color:"blue"},{text:" [军团牌]",color:"dark_green"},{text:"时\n",color:"gold"},{text:"随机2个友方怪物获得1s速度2\n",color:"gold"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"闪击战法",color:"aqua",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"你每次使用",color:"gold"},{text:"[基本牌]",color:"blue"},{text:" [军团牌]",color:"dark_green"},{text:"时\n",color:"gold"},{text:"随机2个友方怪物获得1s速度2\n",color:"gold"}]}}]