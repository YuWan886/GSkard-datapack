scoreboard players set time worldborder 7200
bossbar set minecraft:worldborder max 7200
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.pvptime.6.1", fallback: "PVP边界收缩倒计时修改为 6min",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 227 -29 air
setblock 99 227 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvptime/7"},color:"gold",translate: "kards.function.lobby.setting.pvptime.0.3", fallback: "PVP边界收缩倒计时"},{translate: "kards.function.lobby.setting.pvptime.6.2", fallback: "6min",color:"green"},'','']}} replace