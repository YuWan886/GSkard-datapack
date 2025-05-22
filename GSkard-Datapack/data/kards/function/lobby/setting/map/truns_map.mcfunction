scoreboard players add #system dituxuanze 1
kill @e[type=marker]
advancement revoke @s only kards:lobby/truns_map
forceload remove all
forceload add 3 -47
execute if score #system dituxuanze matches 1 run forceload add -25 7 6 59
execute if score #system dituxuanze matches 2 run forceload add -178 11 -147 63
execute if score #system dituxuanze matches 3 run forceload add 103 6 132 56
execute if score #system dituxuanze matches 4 run forceload add -247 11 -216 63
execute if score #system dituxuanze matches 5 run forceload add -99 0 -68 52
execute if score #system dituxuanze matches 6 run forceload add 264 -378 295 -326
execute if score #system dituxuanze matches 7 run forceload add 191 31 221 83
execute if score #system dituxuanze matches 8 run forceload add 60 105 91 157

execute if score #system dituxuanze matches 101 run forceload add 278 19 313 91

tellraw @a [{translate: "lobby.setting.map.truns_map.1",color: "green",bold: true},{translate: "lobby.setting.map.truns_map.2",color: "gold"}]
playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 100 2