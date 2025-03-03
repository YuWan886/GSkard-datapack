scoreboard players set system RoundCount 30
tellraw @a [{text: "\n提示:",color: "gold"},{text: "PVP回合设置为",color: "green"},{text: " 30",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -11 air
setblock 61 227 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundcount/40"},color:"gold",text:"PVP回合设置为"},{text:"30",color:"green"},"",""]}} replace


execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 226 -11 minecraft:oak_wall_sign[facing=east]
setblock 61 226 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/21last/7"},color:"gold",text:"21回合后抽牌数量"},{text:"6张",color:"green"},{text:"(默认)",color:"gray"},""]}} destroy

scoreboard players set system DifficultyRound 16
tellraw @a [{text: "提示:",color: "gold"},{text: "困难模式回合设置为",color: "green"},{text: " 16",color: "gold"}]
setblock 61 226 -10 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{color:"gold",text:"困难模式回合"},{text:"16",color:"green"},{text:"不可手动调整",color:"gray"},""]}} destroy
tellraw @a [{text: "提示:",color: "gold"},{text: "21回合后抽牌数量调整为",color: "green"},{text: "6张",color: "gold"}]

kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]