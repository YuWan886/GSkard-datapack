execute as @s[tag=Talent_fushengzuzhou] run return run function kards:dialog/talent/show

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_ranjiweiguang
kill @s
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"燃己为光",color:"gold",hover_event:{action:"show_text",value:[{text:"选择后你",color:"gray"},{text:"立即死亡\n",color:"red"},{text:"使你的所有队友",color:"gray"},{text:"抽2张",color:"gold"},{text:"[神迹牌]\n\n",color:"white"},{text:"随后灵魂化身为光\n",color:"gray"},{text:"每5s向你面朝方向发射1颗光球\n",color:"gold"},{text:"命中队友恢复血量 命中敌人造成伤害",color:"gold"},{text:"光球对图腾无效",color:"dark_gray"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"燃己为光",color:"gold",hover_event:{action:"show_text",value:[{text:"选择后你",color:"gray"},{text:"立即死亡\n",color:"red"},{text:"使你的所有队友",color:"gray"},{text:"抽2张",color:"gold"},{text:"[神迹牌]\n\n",color:"white"},{text:"随后灵魂化身为光\n",color:"gray"},{text:"每5s向你面朝方向发射1颗光球\n",color:"gold"},{text:"命中队友恢复血量 命中敌人造成伤害",color:"gold"},{text:"光球对图腾无效",color:"dark_gray"}]}}]