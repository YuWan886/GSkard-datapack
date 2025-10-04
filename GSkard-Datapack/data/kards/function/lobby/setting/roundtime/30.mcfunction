scoreboard players set #system roundtime 600
bossbar set minecraft:roundtime max 600
tellraw @a [{text: "提示:",color: "gold"},{text: "回合时间修改为 30秒",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 228 -23 air
setblock 99 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundtime/45"},color:"gold",text: "回合时间调整"},{text: "30s",color:"green"},'','']}} replace
