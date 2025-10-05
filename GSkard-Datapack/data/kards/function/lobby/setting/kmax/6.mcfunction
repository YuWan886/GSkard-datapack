scoreboard players set #system kardCountmax 6
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.kmax.1.1", fallback: "每回合Kmax增加变为",color: "green"},{translate: "kards.function.lobby.setting.kmax.6.1", fallback: "6",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 228 -29 air
setblock 99 228 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/kmax/7"},color:"gold",translate: "kards.function.lobby.setting.kmax.1.2", fallback: "每回合Kmax增加"},{translate: "kards.function.lobby.setting.kmax.6.1", fallback: "6",color:"green"},'','']}} replace