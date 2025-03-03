scoreboard players set system roundtime 1200
bossbar set minecraft:roundtime max 1200
tellraw @a [{text: "提示:",color: "gold"},{text: "回合时间修改为 60秒",color: "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -4 minecraft:oak_wall_sign[facing=east]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundtime/70"},color:"gold",text:"回合时间调整"},{text:"60s",color:"green"},{text:"(默认)",color:"gray"},""]}} destroy