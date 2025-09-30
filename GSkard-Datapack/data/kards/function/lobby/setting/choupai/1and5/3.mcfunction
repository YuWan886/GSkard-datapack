data modify storage system choupai merge value {1and5:3}

tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.choupai.1and5.1.1", fallback: "1-5回合抽牌数量调整为",color: "green"},{translate: "kards.function.lobby.setting.choupai.11and15.3.1", fallback: "3张",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 95 228 -29 air
setblock 95 228 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/1and5/4"},color:"gold",translate: "kards.function.lobby.setting.choupai.1and5.1.2", fallback: "1-5回合抽牌数量"},{translate: "kards.function.lobby.setting.choupai.11and15.3.1", fallback: "3张",color:"green"},'','']}} replace