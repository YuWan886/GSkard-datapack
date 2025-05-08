scoreboard players set system kardCountmax 6
tellraw @a [{"text": "提示:","color": "gold"},{"text": "每回合Kmax增加变为","color": "green"},{"text": "6","color": "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 61 226 -5 air
setblock 61 226 -5 minecraft:oak_wall_sign[facing=east]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kards:lobby/setting/kmax/7"},"color":"gold","text":"每回合Kmax增加"}','{"text":"6","color":"green"}','""','""']}} replace