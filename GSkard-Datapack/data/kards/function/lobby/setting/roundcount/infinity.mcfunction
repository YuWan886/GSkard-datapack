scoreboard players set system RoundCount -1
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.roundcount.infinity.1",color: "red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{color:"gold",translate: "lobby.setting.pvpround.open.3"},{translate: "lobby.setting.pvpround.off.4",color:"red"},{translate: "lobby.setting.roundcount.infinity.2",color:"red"},'""']}} destroy
scoreboard players set system DifficultyRound 1
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvpround.open.6",color: "green"},{translate: "lobby.setting.roundcount.infinity.3",color: "gold"}]
setblock 61 226 -10 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{color:"gold",translate: "lobby.setting.pvpround.open.8"},{translate: "lobby.setting.kmax.1.2",color:"green"},{translate: "lobby.setting.pvpround.open.10",color:"gray"},'""']}} destroy

kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]