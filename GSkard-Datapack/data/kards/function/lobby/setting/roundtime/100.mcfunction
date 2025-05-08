scoreboard players set system roundtime 2000
bossbar set minecraft:roundtime max 2000
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.roundtime.100.1",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -4 air
setblock 61 227 -4 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundtime/110"},color:"gold",translate: "lobby.setting.roundtime.0.3"},{translate: "lobby.setting.roundtime.100.2",color:"green"},'""','""']}} replace