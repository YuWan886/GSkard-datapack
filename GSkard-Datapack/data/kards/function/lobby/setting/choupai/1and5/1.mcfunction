data modify storage system choupai merge value {1and5:1}

tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.choupai.1and5.1.1",color: "green"},{translate: "lobby.setting.choupai.11and15.1.3",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 95 228 -29 air
setblock 95 228 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/1and5/2"},color:"gold",translate: "lobby.setting.choupai.1and5.1.2"},{translate: "lobby.setting.choupai.11and15.1.3",color:"green"},'','']}} replace