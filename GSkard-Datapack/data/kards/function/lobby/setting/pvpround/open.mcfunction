scoreboard players set system Gamerule_PVP_round 1

tellraw @a [{translate: "lobby.setting.pvpround.off.1",color: "gold"},{translate: "lobby.setting.pvpround.off.2",color: "aqua"},{translate: "lobby.setting.pvpround.open.1",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -10 air
setblock 61 227 -10 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvpround/off"},color:"aqua",translate: "lobby.setting.pvpround.off.2"},{translate: "lobby.setting.pvpround.open.2",color:"green"},{translate: "lobby.setting.choupai.11and15.4.2",color:"gray"},'""']}} replace

scoreboard players set system RoundCount 20
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvpround.open.3",color: "green"},{translate: "lobby.setting.pvpround.open.4",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundcount/30"},color:"gold",translate: "lobby.setting.pvpround.open.3"},{translate: "lobby.setting.pvpround.open.5",color:"green"},{translate: "lobby.setting.choupai.11and15.4.2",color:"gray"},'""']}} destroy
setblock 61 226 -11 minecraft:air destroy
scoreboard players set system DifficultyRound 11
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvpround.open.6",color: "green"},{translate: "lobby.setting.pvpround.open.7",color: "gold"}]
setblock 61 226 -10 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{color:"gold",translate: "lobby.setting.pvpround.open.8"},{translate: "lobby.setting.pvpround.open.9",color:"green"},{translate: "lobby.setting.pvpround.open.10",color:"gray"},'""']}} destroy

kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]