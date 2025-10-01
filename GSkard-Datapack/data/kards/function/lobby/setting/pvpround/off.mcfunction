scoreboard players set #system Gamerule_PVP_round 0

tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "json.kards.dialog.jiaocheng.wanfa.4.201", fallback: "PVP回合",color: "aqua"},{translate: "kards.function.lobby.setting.pvpround.off.1", fallback: " 已禁用!",color: "red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 100 228 -23 air
setblock 100 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvpround/open"},color:"aqua",translate: "json.kards.dialog.jiaocheng.wanfa.4.201", fallback: "PVP回合"},{translate: "json.kards.dialog.setting.random_start.main.1301", fallback: "禁用",color:"red"},'','']}} replace

function kards:lobby/setting/roundcount/infinity

data modify storage system choupai merge value {21last:6}

tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.choupai.21last.1.1", fallback: "21回合后抽牌数量调整为",color: "green"},{translate: "kards.function.lobby.setting.choupai.21last.6.1", fallback: "6张",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 96 227 -29 minecraft:air
setblock 96 227 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/21last/7"},color:"gold",translate: "kards.function.lobby.setting.choupai.21last.1.2", fallback: "21回合后抽牌数量"},{translate: "kards.function.lobby.setting.choupai.21last.6.1", fallback: "6张",color:"green"},{translate: "kards.function.lobby.setting.choupai.11and15.4.2", fallback: "(默认)",color:"gray"},'']}} destroy


execute if score #system roundtime matches 0 run function kards:lobby/setting/roundtime/60.1
kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]
