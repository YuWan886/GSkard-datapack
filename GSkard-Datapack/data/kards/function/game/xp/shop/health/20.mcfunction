execute unless score @s Xp_Levels matches 20.. run tellraw @s [{text:"[经验商店]",color:"green"},{text:"您的经验不足",color:"red"}]
execute unless score @s Xp_Levels matches 20.. run return run playsound minecraft:entity.villager.no player @s

scoreboard players add @s HealBack 48
tellraw @s [{text:"[经验商店]",color:"green"},{text:"您消耗了",color:"gray"},{text:"20级经验",color:"gold"},{text:"以",color:"gray"},{text:"回复24♥",color:"green"}]
playsound minecraft:entity.villager.yes player @s
xp add @s -550 points
