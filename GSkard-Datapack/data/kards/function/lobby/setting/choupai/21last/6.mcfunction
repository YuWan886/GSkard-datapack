data modify storage system choupai merge value {21last:6}

tellraw @a [{"text": "提示:","color": "gold"},{"text": "21回合后抽牌数量调整为","color": "green"},{"text": "6张","color": "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 226 -11 air
setblock 61 226 -11 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kards:lobby/setting/choupai/21last/7"},"color":"gold","text":"21回合后抽牌数量"}','{"text":"6张","color":"green"}','{"text":"(默认)","color":"gray"}','""']}} replace