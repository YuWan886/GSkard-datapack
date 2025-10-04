scoreboard players set time worldborder 12000
bossbar set minecraft:worldborder max 12000
tellraw @a [{text: "提示:",color: "gold"},{text: "PVP边界收缩倒计时修改为 10min",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 227 -29 air
setblock 99 227 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvptime/0"},color:"gold",text: "PVP边界收缩倒计时"},{text: "10min",color:"green"},'','']}} replace