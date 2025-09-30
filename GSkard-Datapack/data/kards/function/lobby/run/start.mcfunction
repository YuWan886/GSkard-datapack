tellraw @s [{translate: "kards.function.lobby.run.backpoint.1", fallback: "[跑酷]",color:"green"},{translate: "kards.function.lobby.run.start.1", fallback: "计时开始",color:"gold"}]
tag @s add Running
tag @s add RunningReset
tag @s remove Ready
tag @s add Un_Ready
team join Running