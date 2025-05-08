data modify storage system choupai merge value {11and15:4}

tellraw @a [{"text": "提示:","color": "gold"},{"text": "11-15回合抽牌数量调整为","color": "green"},{"text": "4张","color": "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 226 -7 air
setblock 61 226 -7 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kards:lobby/setting/choupai/11and15/5"},"color":"gold","text":"11-15回合抽牌数量"}','{"text":"4张","color":"green"}','{"text":"(默认)","color":"gray"}','""']}} replace