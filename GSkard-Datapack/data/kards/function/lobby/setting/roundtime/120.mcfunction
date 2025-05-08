scoreboard players set system roundtime 2400
bossbar set minecraft:roundtime max 2400
tellraw @a [{"text": "提示:","color": "gold"},{"text": "回合时间修改为 120秒","color": "green"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -4 air
setblock 61 227 -4 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kards:lobby/setting/roundtime/0"},"color":"gold","text":"回合时间调整"}','{"text":"120s","color":"green"}','""','""']}} replace