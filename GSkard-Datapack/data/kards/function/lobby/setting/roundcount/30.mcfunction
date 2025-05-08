scoreboard players set system RoundCount 30
tellraw @a [{translate: "lobby.setting.pvpround.off.1",color: "gold"},{translate: "lobby.setting.pvpround.open.3",color: "green"},{translate: "lobby.setting.roundcount.30.1",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -11 air
setblock 61 227 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundcount/40"},color:"gold",translate: "lobby.setting.pvpround.open.3"},{translate: "lobby.setting.roundcount.30.2",color:"green"},'""','""']}} replace


execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 226 -11 minecraft:oak_wall_sign[facing=east]
setblock 61 226 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/21last/7"},color:"gold",translate: "lobby.setting.choupai.21last.1.2"},{translate: "lobby.setting.choupai.21last.6.1",color:"green"},{translate: "lobby.setting.choupai.11and15.4.2",color:"gray"},'""']}} destroy

scoreboard players set system DifficultyRound 16
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvpround.open.6",color: "green"},{translate: "lobby.setting.roundcount.30.3",color: "gold"}]
setblock 61 226 -10 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{color:"gold",translate: "lobby.setting.pvpround.open.8"},{translate: "lobby.setting.roundcount.30.4",color:"green"},{translate: "lobby.setting.pvpround.open.10",color:"gray"},'""']}} destroy
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.choupai.21last.1.1",color: "green"},{translate: "lobby.setting.choupai.21last.6.1",color: "gold"}]

kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]