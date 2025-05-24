execute if score #system Gamerule_PVP_round matches 0 run return run function kards:lobby/setting/roundtime/30
scoreboard players set #system roundtime 0
bossbar set minecraft:roundtime max 600
tellraw @a [{translate: "lobby.setting.choupai.11and15.1.1",color: "gold"},{translate: "lobby.setting.roundtime.0.1",color: "green"},{translate: "lobby.setting.roundtime.0.2",color: "red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 228 -23 air
setblock 99 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundtime/30"},color:"gold",translate: "lobby.setting.roundtime.0.3"},{translate: "lobby.setting.roundtime.0.4",color:"red"},'','']}} replace