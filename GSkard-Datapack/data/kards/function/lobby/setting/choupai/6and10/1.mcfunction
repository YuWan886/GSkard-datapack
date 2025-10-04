data modify storage system choupai merge value {6and10:1}

tellraw @a [{text: "提示:",color: "gold"},{text: "6-10回合抽牌数量调整为",color: "green"},{text: "1张",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 96 228 -29 air
setblock 96 228 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/6and10/2"},color:"gold",text: "6-10回合抽牌数量"},{text: "1张",color:"green"},'','']}} replace