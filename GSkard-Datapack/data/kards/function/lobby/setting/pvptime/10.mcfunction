scoreboard players set time worldborder 12000
bossbar set minecraft:worldborder max 12000
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.pvptime.10.1",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -5 air
setblock 61 227 -5 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvptime/0"},color:"gold",translate: "lobby.setting.pvptime.0.3"},{translate: "lobby.setting.pvptime.10.2",color:"green"},'""','""']}} replace