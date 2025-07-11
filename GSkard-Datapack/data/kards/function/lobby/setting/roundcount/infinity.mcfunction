scoreboard players set #system RoundCount -1
tellraw @a [{text: "提示:",color: "gold"},{text: "PVP回合禁用 游戏最大回合不限",color: "red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 101 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",text: "PVP回合设置为"},{text: "禁用",color:"red"},{text: "游戏最大回合不限",color:"red"},'']}} destroy
scoreboard players set #system DifficultyRound -1
tellraw @a [{text: "提示:",color: "gold"},{text: "困难模式回合设置为",color: "green"},{text: " 关",color: "gold"}]
setblock 101 227 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",text: "困难模式回合"},{text: "关",color:"green"},{text: "不可手动调整",color:"gray"},'']}} destroy
kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]
