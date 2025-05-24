scoreboard players set time worldborder 10800
bossbar set minecraft:worldborder max 10800
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvptime.9.1",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 227 -29 air
setblock 99 227 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvptime/10"},color:"gold",translate: "lobby.setting.pvptime.0.3"},{translate: "lobby.setting.pvptime.9.2",color:"green"},'','']}} replace