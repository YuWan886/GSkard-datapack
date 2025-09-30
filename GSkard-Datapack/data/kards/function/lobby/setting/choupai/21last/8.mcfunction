data modify storage system choupai merge value {21last:8}

tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.choupai.21last.1.1", fallback: "21回合后抽牌数量调整为",color: "green"},{translate: "kards.function.lobby.setting.choupai.21last.8.1", fallback: "8张",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 96 227 -29 air
setblock 96 227 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/21last/9"},color:"gold",translate: "kards.function.lobby.setting.choupai.21last.1.2", fallback: "21回合后抽牌数量"},{translate: "kards.function.lobby.setting.choupai.21last.8.1", fallback: "8张",color:"green"},'','']}} replace