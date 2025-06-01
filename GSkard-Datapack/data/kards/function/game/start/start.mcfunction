execute store result score #system Ready_Num if entity @a[tag=Ready]
execute store result score 人数差 r_number if entity @a[team=red]
execute store result score 人数差 b_number if entity @a[team=blue]
scoreboard players operation 人数差 b_number -= 人数差 r_number
execute unless score 人数差 b_number matches 0..1 run team join lobby @a[tag=Ready]
execute unless score 人数差 b_number matches 0..1 run return run tellraw @a [{text: "两队人数相差过多 无法进行游戏 人数差最多为1 且人数多的队伍必须是蓝队",color:"red",bold:true}]
scoreboard players reset 人数差
execute if score #system Ready_Num matches 0..1 run tellraw @a [{text: "人数不足 无法进行游戏",color:"red",bold:true}]
execute if score #system Ready_Num matches 2 run function kards:lobby/team/2start
execute if score #system Ready_Num matches 3 run function kards:lobby/team/3start
execute if score #system Ready_Num matches 4 run function kards:lobby/team/4start
execute if score #system Ready_Num matches 5 run function kards:lobby/team/5start
execute if score #system Ready_Num matches 6 run function kards:lobby/team/6start
execute if score #system Ready_Num matches 7 run function kards:lobby/team/7start
execute if score #system Ready_Num matches 8 run function kards:lobby/team/8start
execute if score #system Ready_Num matches 9 run function kards:lobby/team/9start
execute if score #system Ready_Num matches 10 run function kards:lobby/team/10start
execute if score #system Ready_Num matches 11 run function kards:lobby/team/11start
execute if score #system Ready_Num matches 12 run function kards:lobby/team/12start
execute if score #system Ready_Num matches 13 run function kards:lobby/team/13start
execute if score #system Ready_Num matches 14 run function kards:lobby/team/14start
execute if score #system Ready_Num matches 15 run function kards:lobby/team/15start
execute if score #system Ready_Num matches 16 run function kards:lobby/team/16start
execute if score #system Ready_Num matches 17 run function kards:lobby/team/17start
execute if score #system Ready_Num matches 18 run function kards:lobby/team/18start
execute if score #system Ready_Num matches 19 run function kards:lobby/team/19start
execute if score #system Ready_Num matches 20..30 run function kards:lobby/team/20start

execute if score #system Ready_Num matches 31.. run tellraw @a [{text: "人数过多 无法进行游戏",color:"red",bold:true}]