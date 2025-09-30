data modify storage system choupai merge value {16and20:2}

tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.choupai.16and20.1.1", fallback: "16-20回合抽牌数量调整为",color: "green"},{translate: "kards.function.lobby.setting.choupai.11and15.2.1", fallback: "2张",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 95 227 -29 air
setblock 95 227 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/16and20/3"},color:"gold",translate: "kards.function.lobby.setting.choupai.16and20.1.2", fallback: "16-20回合抽牌数量"},{translate: "kards.function.lobby.setting.choupai.11and15.2.1", fallback: "2张",color:"green"},'','']}} replace