scoreboard players set system RoundCount 10
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvpround.open.3",color: "green"},{translate: "lobby.setting.roundcount.10.1",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -11 air
setblock 61 227 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundcount/20"},color:"gold",translate: "lobby.setting.pvpround.open.3"},{translate: "lobby.setting.kmax.10.1",color:"green"},'""','""']}} replace

scoreboard players set system DifficultyRound 6
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvpround.open.6",color: "green"},{translate: "lobby.setting.roundcount.10.2",color: "gold"}]
setblock 61 226 -10 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{color:"gold",translate: "lobby.setting.pvpround.open.8"},{translate: "lobby.setting.kmax.6.1",color:"green"},{translate: "lobby.setting.pvpround.open.10",color:"gray"},'""']}} destroy

setblock 61 226 -11 minecraft:air destroy
kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]