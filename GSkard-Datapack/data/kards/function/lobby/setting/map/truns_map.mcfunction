scoreboard players add #system dituxuanze 1
kill @e[type=marker]
advancement revoke @s only kards:lobby/truns_map
forceload remove all
execute if score #system dituxuanze matches 101 run forceload add 278 19 313 91

tellraw @a [{translate: "lobby.setting.map.truns_map.1",color: "green",bold: true},{translate: "lobby.setting.map.truns_map.2",color: "gold"}]
playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 100 2