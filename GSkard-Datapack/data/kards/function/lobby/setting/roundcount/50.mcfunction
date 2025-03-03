scoreboard players set system RoundCount 50
tellraw @a [{text: "\n提示:",color: "gold"},{text: "PVP回合设置为",color: "green"},{text: " 50",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -11 air
setblock 61 227 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundcount/10"},color:"gold",text:"PVP回合设置为"},{text:"50",color:"green"},"",""]}} replace

scoreboard players set system DifficultyRound 26
tellraw @a [{text: "提示:",color: "gold"},{text: "困难模式回合设置为",color: "green"},{text: " 26",color: "gold"}]
setblock 61 226 -10 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{color:"gold",text:"困难模式回合"},{text:"26",color:"green"},{text:"不可手动调整",color:"gray"},""]}} destroy
kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]