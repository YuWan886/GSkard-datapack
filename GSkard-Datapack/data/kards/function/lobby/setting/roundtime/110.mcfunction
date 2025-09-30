scoreboard players set #system roundtime 2200
bossbar set minecraft:roundtime max 2200
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.roundtime.110.1", fallback: "回合时间修改为 110秒",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 228 -23 air
setblock 99 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundtime/120"},color:"gold",translate: "kards.function.lobby.setting.roundtime.0.3", fallback: "回合时间调整"},{translate: "kards.function.lobby.setting.roundtime.110.2", fallback: "110s",color:"green"},'','']}} replace