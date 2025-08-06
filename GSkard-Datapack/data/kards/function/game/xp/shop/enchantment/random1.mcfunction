execute unless score @s Xp matches 10.. run tellraw @s [{text:"[经验商店]",color:"green"},{text:"您的经验不足",color:"red"}]
execute unless score @s Xp matches 10.. run return run playsound minecraft:entity.villager.no player @s

