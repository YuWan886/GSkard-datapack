tellraw @s [{text: "[跑酷]",color:"green"},{text: "计时开始",color:"gold"}]
tag @s add Running
tag @s add RunningReset
tag @s remove Ready
tag @s add Un_Ready
team join Running
