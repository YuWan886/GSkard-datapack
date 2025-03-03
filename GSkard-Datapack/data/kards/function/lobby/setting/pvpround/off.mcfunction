scoreboard players set system Gamerule_PVP_round 0

tellraw @a [{text: "\n提示:",color: "gold"},{text: "PVP回合",color: "aqua"},{text: " 已禁用!",color: "red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -10 air
setblock 61 227 -10 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvpround/open"},color:"aqua",text:"PVP回合"},{text:"禁用",color:"red"},"",""]}} replace

function kards:lobby/setting/roundcount/infinity

data modify storage system choupai merge value {21last:6}

tellraw @a [{text: "提示:",color: "gold"},{text: "21回合后抽牌数量调整为",color: "green"},{text: "6张",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 226 -11 minecraft:oak_wall_sign[facing=east]
setblock 61 226 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/21last/7"},color:"gold",text:"21回合后抽牌数量"},{text:"6张",color:"green"},{text:"(默认)",color:"gray"},""]}} destroy


execute if score system roundtime matches 0 run function kards:lobby/setting/roundtime/60.1
kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]