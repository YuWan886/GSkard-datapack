execute unless score @s Xp_Levels matches 65.. run tellraw @s [{text:"[经验商店]",color:"green"},{text:"您的经验不足",color:"red"}]
execute unless score @s Xp_Levels matches 65.. run return run execute at @s run playsound minecraft:block.vault.eject_item player @s

tellraw @s [{text:"[经验商店]",color:"green"},{text:"您消耗了",color:"gray"},{text:"65级经验",color:"gold"},{text:"购买了",color:"gray"},{text:"审判者 ",color:"dark_aqua"},{text:"I",color:"gray"}]
function kards:enchantment/book/shelf/shenpanzhe
execute at @s run playsound minecraft:block.vault.insert_item player @s
execute at @s run playsound minecraft:block.trial_spawner.spawn_item_begin player @s
xp add @s -65 levels