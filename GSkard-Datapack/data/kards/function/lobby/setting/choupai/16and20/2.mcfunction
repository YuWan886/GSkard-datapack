data modify storage system choupai merge value {16and20:2}

tellraw @a [{"text": "提示:","color": "gold"},{"text": "16-20回合抽牌数量调整为","color": "green"},{"text": "2张","color": "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 226 -8 air
setblock 61 226 -8 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kards:lobby/setting/choupai/16and20/3"},"color":"gold","text":"16-20回合抽牌数量"}','{"text":"2张","color":"green"}','""','""']}} replace