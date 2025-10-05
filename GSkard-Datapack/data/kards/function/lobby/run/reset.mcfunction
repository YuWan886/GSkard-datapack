tellraw @s [{translate: "kards.function.lobby.run.backpoint.1", fallback: "[跑酷]",color:"green"},{translate: "kards.function.lobby.run.reset.1", fallback: "重新计时",color:"gold"}]
scoreboard players set @s RunningTime 0
scoreboard players set @s RunningTime_All 0
scoreboard players set @s RunningTime_Sec 0
scoreboard players set @s RunningTime_Min 0
tag @s add RunningReset