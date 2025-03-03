data modify storage system choupai merge value {6and10:4}

tellraw @a [{text: "提示:",color: "gold"},{text: "6-10回合抽牌数量调整为",color: "green"},{text: "4张",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -8 air
setblock 61 227 -8 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/6and10/5"},color:"gold",text:"6-10回合抽牌数量"},{text:"4张",color:"green"},"",""]}} replace