scoreboard players set #system RoundCount 40
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvpround.open.3",color: "green"},{translate: "lobby.setting.roundcount.40.1",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 101 228 -23 air
setblock 101 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundcount/50"},color:"gold",translate: "lobby.setting.pvpround.open.3"},{translate: "lobby.setting.roundcount.40.2",color:"green"},'','']}} replace

scoreboard players set #system DifficultyRound 21
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvpround.open.6",color: "green"},{translate: "lobby.setting.roundcount.40.3",color: "gold"}]
setblock 101 227 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",translate: "lobby.setting.pvpround.open.8"},{translate: "lobby.setting.roundcount.40.4",color:"green"},{translate: "lobby.setting.pvpround.open.10",color:"gray"},'']}} destroy
kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]