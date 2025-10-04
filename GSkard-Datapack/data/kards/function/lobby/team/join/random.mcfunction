execute store result score #system Ready_Num if entity @a[tag=Ready]
execute unless score #system Ready_Num matches 2.. at @s run playsound block.note_block.bass block @s ~ ~ ~ 100 1 1
execute unless score #system Ready_Num matches 2.. run return run tellraw @s [{text:"\n准备人数不足!\n",color:"red"},{text:"当前准备人数 ",color:"gray"},{score:{name:"#system",objective:"Ready_Num"},color:"green"},{text:"\n",color:"gray"},{text:"准备人数至少2人才可进行分队!",color:"red"}]

team add team_temp
team join team_temp @a[tag=Ready]
function kards:lobby/team/join/loop
team remove team_temp

execute store result score 红队 Number if entity @a[team=red]
execute store result score 蓝队 Number if entity @a[team=blue]

playsound block.note_block.chime block @a ~ ~ ~ 100 2 1
tellraw @a [{text:"\n随机分队完成!\n\n",color:"green"},{text:"红队 ",color:"red"},{score:{name:"红队",objective:"Number"},color:"green"},{text:"\n",color:"gray"},{text:"蓝队 ",color:"blue"},{score:{name:"蓝队",objective:"Number"},color:"green"},{text:"\n",color:"gray"}]

execute unless score 红队 Number = 蓝队 Number run function kards:lobby/team/join/offsets/1

