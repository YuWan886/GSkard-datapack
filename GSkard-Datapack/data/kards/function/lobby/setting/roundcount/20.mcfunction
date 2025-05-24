scoreboard players set #system RoundCount 20
tellraw @a [{text: "提示:",color: "gold"},{text: "PVP回合设置为",color: "green"},{text: " 20",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 101 228 -23 air
setblock 101 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundcount/30"},color:"gold",text: "PVP回合设置为"},{text: "20",color:"green"},{text: "(默认)",color:"gray"},'']}} replace

scoreboard players set #system DifficultyRound 11
tellraw @a [{text: "提示:",color: "gold"},{text: "困难模式回合设置为",color: "green"},{text: " 11",color: "gold"}]
setblock 101 227 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",text: "困难模式回合"},{text: "11",color:"green"},{text: "不可手动调整",color:"gray"},'']}} destroy
kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]