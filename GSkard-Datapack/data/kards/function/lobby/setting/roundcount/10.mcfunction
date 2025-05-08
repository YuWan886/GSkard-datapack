scoreboard players set system RoundCount 10
tellraw @a [{"text": "\n提示:","color": "gold"},{"text": "PVP回合设置为","color": "green"},{"text": " 10","color": "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 227 -11 air
setblock 61 227 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kards:lobby/setting/roundcount/20"},"color":"gold","text":"PVP回合设置为"}','{"text":"10","color":"green"}','""','""']}} replace

scoreboard players set system DifficultyRound 6
tellraw @a [{"text": "提示:","color": "gold"},{"text": "困难模式回合设置为","color": "green"},{"text": " 6","color": "gold"}]
setblock 61 226 -10 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"color":"gold","text":"困难模式回合"}','{"text":"6","color":"green"}','{"text":"不可手动调整","color":"gray"}','""']}} destroy

setblock 61 226 -11 minecraft:air destroy
kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]