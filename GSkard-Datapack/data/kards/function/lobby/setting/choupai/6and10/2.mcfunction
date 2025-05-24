data modify storage system choupai merge value {6and10:2}

tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.choupai.6and10.1.1",color: "green"},{translate: "lobby.setting.choupai.11and15.2.1",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 96 228 -29 air
setblock 96 228 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/6and10/3"},color:"gold",translate: "lobby.setting.choupai.6and10.1.2"},{translate: "lobby.setting.choupai.11and15.2.1",color:"green"},'','']}} replace