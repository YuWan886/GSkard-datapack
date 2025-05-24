scoreboard players set #system kardCountmax 4
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.kmax.1.1",color: "green"},{translate: "lobby.setting.kmax.4.1",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 228 -29 air
setblock 99 228 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/kmax/5"},color:"gold",translate: "lobby.setting.kmax.1.3"},{translate: "lobby.setting.kmax.4.1",color:"green"},'','']}} replace