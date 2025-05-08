data modify storage system choupai merge value {1and5:4}

tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.choupai.1and5.1.1",color: "green"},{translate: "lobby.setting.choupai.11and15.4.1",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -7 air
setblock 61 227 -7 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/1and5/5"},color:"gold",translate: "lobby.setting.choupai.1and5.1.2"},{translate: "lobby.setting.choupai.11and15.4.1",color:"green"},'""','""']}} replace