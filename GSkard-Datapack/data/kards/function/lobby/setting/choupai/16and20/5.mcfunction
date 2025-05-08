data modify storage system choupai merge value {16and20:5}

tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.choupai.16and20.1.1",color: "green"},{translate: "lobby.setting.choupai.11and15.5.1",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 226 -8 air
setblock 61 226 -8 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/16and20/1"},color:"gold",translate: "lobby.setting.choupai.16and20.1.2"},{translate: "lobby.setting.choupai.11and15.5.1",color:"green"},{translate: "lobby.setting.choupai.11and15.4.2",color:"gray"},'""']}} replace