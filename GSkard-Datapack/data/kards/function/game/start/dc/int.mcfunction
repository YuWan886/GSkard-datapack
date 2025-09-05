advancement revoke @s only kards:lobby/start_game

execute store result score temp r_number if entity @a[team=red]
execute store result score temp b_number if entity @a[team=blue]
scoreboard players operation temp b_number -= temp r_number

execute unless score temp b_number matches 0..1 run tellraw @a [{text:"\n====================\n",color:"gray"},{text: "\n分队有误 无法进行游戏",color:"red",bold:true},{text: "\n| 请确保两队人数差不大于1\n| 请确保蓝队人数是较多的\n",color:"green",bold:true},{text:"\n====================\n",color:"gray"}]
execute unless score temp b_number matches 0..1 as @a at @s run playsound minecraft:entity.ravager.hurt block @s ~ ~17 ~ 0 1 0.35
execute unless score temp b_number matches 0..1 run return run scoreboard players reset temp


execute store result score #system Ready_Num if entity @a[tag=Ready]
execute if score #system Ready_Num matches 0..1 as @a at @s run playsound minecraft:entity.ravager.hurt block @s ~ ~17 ~ 0 1 0.35
execute if score #system Ready_Num matches 0..1 run return run tellraw @a [{text:"\n====================\n",color:"gray"},{text: "\n人数不足 无法进行游戏",color:"red",bold:true},{text: "\n| 请确保准备人数大于1\n",color:"green",bold:true},{text:"\n====================\n",color:"gray"}]
execute if score #system Ready_Num matches 31.. as @a at @s run playsound minecraft:entity.ravager.hurt block @s ~ ~17 ~ 0 1 0.35
execute if score #system Ready_Num matches 31.. run return run tellraw @a [{text:"\n====================\n",color:"gray"},{text: "\n人数过多 无法进行游戏",color:"red",bold:true},{text: "\n| 请确保人数不大于30\n",color:"green",bold:true},{text:"\n====================\n",color:"gray"}]

scoreboard players set #system wait_start 101
title @a times 10t 10t 10t