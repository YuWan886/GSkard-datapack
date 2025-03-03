scoreboard players set system roundtime 2200
bossbar set minecraft:roundtime max 2200
tellraw @a [{text: "提示:",color: "gold"},{text: "回合时间修改为 110秒",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -4 air
setblock 61 227 -4 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundtime/120"},color:"gold",text:"回合时间调整"},{text:"110s",color:"green"},"",""]}} replace