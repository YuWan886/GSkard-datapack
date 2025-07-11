data modify storage system choupai merge value {11and15:2}
tellraw @a [{text: "提示:",color: "gold"},{text: "11-15回合抽牌数量调整为",color: "green"},{text: "2张",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 97 228 -29 air
setblock 97 228 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/11and15/3"},color:"gold",text: "11-15回合抽牌数量"},{text: "2张",color:"green"},'','']}} replace
