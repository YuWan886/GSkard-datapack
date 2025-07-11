scoreboard players set time worldborder 3600
bossbar set minecraft:worldborder max 3600
tellraw @a [{text: "提示:",color: "gold"},{text: "PVP边界收缩倒计时修改为 3min",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 227 -29 air
setblock 99 227 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvptime/4"},color:"gold",text: "PVP边界收缩倒计时"},{text: "3min",color:"green"},'','']}} replace
