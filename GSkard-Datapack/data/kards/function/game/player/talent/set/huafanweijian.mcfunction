execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_huafanweijian

attribute @s armor modifier add talent-6 30 add_value
attribute @s attack_damage modifier add talent-7 0.4 add_multiplied_base
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

execute at @s run function kards:game/player/talent/enable/huafanweijian/1

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"化繁为简",color:"aqua",hover_event:{action:"show_text",value:[{text:"在本局游戏内",color:"gray"},{text:"你无法穿戴护甲\n",color:"red"},{text:"但",color:"gray"},{text:"护甲值+30 攻击伤害+40%\n",color:"gold"},{text:"且",color:"gray"},{text:"不会成为诅咒护甲的选中目标",color:"gold"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"化繁为简",color:"aqua",hover_event:{action:"show_text",value:[{text:"在本局游戏内",color:"gray"},{text:"你无法穿戴护甲\n",color:"red"},{text:"但",color:"gray"},{text:"护甲值+30 攻击伤害+40%\n",color:"gold"},{text:"且",color:"gray"},{text:"不会成为诅咒护甲的选中目标",color:"gold"}]}}]