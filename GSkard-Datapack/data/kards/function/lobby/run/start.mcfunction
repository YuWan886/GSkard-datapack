tellraw @s [{translate: "lobby.run.backpoint.1",color:"green"},{translate: "lobby.run.start.1",color:"gold"}]
tag @s add Running
tag @s add RunningReset
tag @s remove Ready
tag @s remove Un_Ready
team join Running