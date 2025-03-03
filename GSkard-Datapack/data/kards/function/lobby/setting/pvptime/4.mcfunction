scoreboard players set time worldborder 4800
bossbar set minecraft:worldborder max 4800
tellraw @a [{text: "提示:",color: "gold"},{text: "PVP边界收缩倒计时修改为 4min",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -5 air
setblock 61 227 -5 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/pvptime/5"},color:"gold",text:"PVP边界收缩倒计时"},{text:"4min",color:"green"},"",""]}} replace