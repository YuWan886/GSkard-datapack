scoreboard players set time worldborder 0
bossbar set minecraft:worldborder max 1200
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.pvptime.0.1", fallback: "PVP边界收缩倒计时修改为",color: "green"},{translate: "kards.function.lobby.setting.pvptime.0.2", fallback: " 没有等待时间!边界直接开始收缩!",color: "red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 227 -29 air
setblock 99 227 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvptime/1"},color:"gold",translate: "kards.function.lobby.setting.pvptime.0.3", fallback: "PVP边界收缩倒计时"},{translate: "kards.function.lobby.setting.pvptime.0.4", fallback: "没有等待时间!",color:"red"},'','']}} replace