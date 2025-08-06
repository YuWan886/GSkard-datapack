execute unless score @s Xp_Levels matches 5.. run tellraw @s [{text:"[经验商店]",color:"green"},{text:"您的经验不足",color:"red"}]
execute unless score @s Xp_Levels matches 5.. run return run playsound minecraft:entity.villager.no player @s

scoreboard players add @s cishu 1
tellraw @s [{text:"[经验商店]",color:"green"},{text:"您消耗了",color:"gray"},{text:"5级经验",color:"gold"},{text:"以",color:"gray"},{text:"抽1张牌",color:"gold"}]
playsound minecraft:entity.villager.yes player @s
xp add @s -55 points
