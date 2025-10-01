scoreboard players set #system Gamerule_PVP_round 1

tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "json.kards.dialog.jiaocheng.wanfa.4.201", fallback: "PVP回合",color: "aqua"},{translate: "kards.function.lobby.setting.pvpround.open.1", fallback: " 已启用!",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 100 228 -23 air
setblock 100 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvpround/off"},color:"aqua",translate: "json.kards.dialog.jiaocheng.wanfa.4.201", fallback: "PVP回合"},{translate: "json.kards.dialog.setting.random_start.main.1302", fallback: "启用",color:"green"},{translate: "kards.function.lobby.setting.choupai.11and15.4.2", fallback: "(默认)",color:"gray"},'']}} destroy

scoreboard players set #system RoundCount 20
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.pvpround.open.2", fallback: "PVP回合设置为",color: "green"},{translate: "kards.function.lobby.setting.pvpround.open.3", fallback: " 20",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 101 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundcount/30"},color:"gold",translate: "kards.function.lobby.setting.pvpround.open.2", fallback: "PVP回合设置为"},{translate: "kards.function.lobby.setting.pvpround.open.4", fallback: "20",color:"green"},{translate: "kards.function.lobby.setting.choupai.11and15.4.2", fallback: "(默认)",color:"gray"},'']}} destroy
setblock 96 227 -29 minecraft:air destroy
scoreboard players set #system DifficultyRound 11
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.pvpround.open.5", fallback: "困难模式回合设置为",color: "green"},{translate: "kards.function.lobby.setting.pvpround.open.6", fallback: " 11",color: "gold"}]
setblock 101 227 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",translate: "kards.function.lobby.setting.pvpround.open.7", fallback: "困难模式回合"},{translate: "kards.function.lobby.setting.pvpround.open.8", fallback: "11",color:"green"},{translate: "kards.function.lobby.setting.pvpround.open.9", fallback: "不可手动调整",color:"gray"},'']}} destroy

kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]