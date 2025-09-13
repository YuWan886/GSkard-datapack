execute if score @s Talent_Survival matches 1.. run scoreboard players add @s cishu 1
execute if score @s Talent_Survival matches 1.. run scoreboard players add @s kardCountmax 1

execute if score @s Talent_Survival matches 2.. run scoreboard players add @s Talent_Count 1
execute if score @s Talent_Survival matches 2.. run scoreboard players add @s kardCountmax 1

execute if score @s Talent_Survival matches 3.. run scoreboard players add @s cishu 1
execute if score @s Talent_Survival matches 3.. run scoreboard players add @s HealBack 10

execute if score @s Talent_Survival matches 4.. run scoreboard players add @s Talent_Count 1
execute if score @s Talent_Survival matches 4.. run scoreboard players add @s kardCountmax 2

execute if score @s Talent_Survival matches 5.. run xp add @s 25 levels

execute if score @s Talent_Survival matches 0..1 run tellraw @s [{text:"你获得了",color:"gray"},{text:"1点",color:"green"},{text:"构想",color:"gray"}]
execute if score @s Talent_Survival matches 2..3 run tellraw @s [{text:"你获得了",color:"gray"},{text:"2点",color:"green"},{text:"构想",color:"gray"}]
execute if score @s Talent_Survival matches 4.. run tellraw @s [{text:"你获得了",color:"gray"},{text:"3点",color:"green"},{text:"构想",color:"gray"}]