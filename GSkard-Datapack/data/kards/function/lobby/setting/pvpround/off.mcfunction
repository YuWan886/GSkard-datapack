scoreboard players set system Gamerule_PVP_round 0

tellraw @a [{translate: "lobby.setting.pvpround.off.1",color: "gold"},{translate: "lobby.setting.pvpround.off.2",color: "aqua"},{translate: "lobby.setting.pvpround.off.3",color: "red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -10 air
setblock 61 227 -10 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvpround/open"},color:"aqua",translate: "lobby.setting.pvpround.off.2"},{translate: "lobby.setting.pvpround.off.4",color:"red"},'""','""']}} replace

function kards:lobby/setting/roundcount/infinity

data modify storage system choupai merge value {21last:6}

tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.choupai.21last.1.1",color: "green"},{translate: "lobby.setting.choupai.21last.6.1",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 226 -11 minecraft:oak_wall_sign[facing=east]
setblock 61 226 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/21last/7"},color:"gold",translate: "lobby.setting.choupai.21last.1.2"},{translate: "lobby.setting.choupai.21last.6.1",color:"green"},{translate: "lobby.setting.choupai.11and15.4.2",color:"gray"},'""']}} destroy


execute if score system roundtime matches 0 run function kards:lobby/setting/roundtime/60.1
kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]