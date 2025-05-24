data modify storage system choupai merge value {1and5:4}

tellraw @a [{text: "提示:",color: "gold"},{text: "1-5回合抽牌数量调整为",color: "green"},{text: "4张",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 95 228 -29 air
setblock 95 228 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/1and5/5"},color:"gold",text: "1-5回合抽牌数量"},{text: "4张",color:"green"},'','']}} replace