scoreboard players set time worldborder 10800
bossbar set minecraft:worldborder max 10800
tellraw @a [{"text": "提示:","color": "gold"},{"text": "PVP边界收缩倒计时修改为 9min","color": "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -5 air
setblock 61 227 -5 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kards:lobby/setting/pvptime/10"},"color":"gold","text":"PVP边界收缩倒计时"}','{"text":"9min","color":"green"}','""','""']}} replace