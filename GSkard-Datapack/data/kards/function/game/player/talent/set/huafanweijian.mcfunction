execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_huafanweijian

attribute @s armor modifier add talent-6 30 add_value
attribute @s attack_damage modifier add talent-7 0.4 add_multiplied_base
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

execute at @s run function kards:game/player/talent/enable/huafanweijian/1

# Tellraw
tellraw @s [{text:"「化繁为简」",color:gray,bold:true},{text:"已开启!",color:gold,bold:true}]