scoreboard players set #system RoundCount -1
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.roundcount.infinity.1",color: "red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 101 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",translate: "lobby.setting.pvpround.open.3"},{translate: "lobby.setting.pvpround.off.3",color:"red"},{translate: "lobby.setting.roundcount.infinity.2",color:"red"},'']}} destroy
scoreboard players set #system DifficultyRound 1
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvpround.open.6",color: "green"},{translate: "lobby.setting.roundcount.infinity.3",color: "gold"}]
setblock 101 227 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",translate: "lobby.setting.pvpround.open.8"},{translate: "lobby.setting.kmax.1.2",color:"green"},{translate: "lobby.setting.pvpround.open.10",color:"gray"},'']}} destroy

kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]