execute if score #system Gamerule_PVP_round matches 0 run return run function kards:lobby/setting/roundtime/30
scoreboard players set #system roundtime 0
bossbar set minecraft:roundtime max 600
tellraw @a [{text: "提示:",color: "gold"},{text: "回合时间修改为",color: "green"},{text: " 没有回合时间!直接进入PVP回合!抽取10张装备牌!抽取1件王之宝库装备",color: "red"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 99 228 -23 air
setblock 99 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundtime/30"},color:"gold",text: "回合时间调整"},{text: "没有回合时间!",color:"red"},'','']}} replace
