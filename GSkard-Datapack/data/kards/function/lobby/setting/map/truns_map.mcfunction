scoreboard players add #system dituxuanze 1
execute if score #system dituxuanze matches 10..100 run scoreboard players set #system dituxuanze 101
execute if score #system dituxuanze matches 102.. run scoreboard players set #system dituxuanze 1

advancement revoke @s only kards:lobby/truns_map
kill @e[type=marker]
forceload remove all
forceload add 3 -47
execute if score #system dituxuanze matches 1 run forceload add -25 7 6 59
execute if score #system dituxuanze matches 2 run forceload add -178 11 -147 63
execute if score #system dituxuanze matches 3 run forceload add 103 6 132 56
execute if score #system dituxuanze matches 4 run forceload add -247 11 -216 63
execute if score #system dituxuanze matches 5 run forceload add -378 -1 -345 53
execute if score #system dituxuanze matches 6 run forceload add 264 -378 295 -326
execute if score #system dituxuanze matches 7 run forceload add 191 31 221 83
execute if score #system dituxuanze matches 8 run forceload add 60 105 91 157
execute if score #system dituxuanze matches 9 run forceload add 395 14 435 84
execute if score #system dituxuanze matches 101 run forceload add 278 19 313 91

execute if score #system dituxuanze matches 1 positioned -13 -11 33 run function kards:game/marker/1
execute if score #system dituxuanze matches 2 positioned -166 -11 37 run function kards:game/marker/1
execute if score #system dituxuanze matches 3 positioned 115 -11 32 run function kards:game/marker/1
execute if score #system dituxuanze matches 4 positioned -235 -11 37 run function kards:game/marker/1
execute if score #system dituxuanze matches 5 positioned -365 -1 26 run function kards:game/marker/1
execute if score #system dituxuanze matches 6 positioned 276 -11 -352 run function kards:game/marker/1
execute if score #system dituxuanze matches 7 positioned 203 -11 57 run function kards:game/marker/1
execute if score #system dituxuanze matches 8 positioned 72 -11 131 run function kards:game/marker/1
execute if score #system dituxuanze matches 9 positioned 412 -12 50 run function kards:game/marker/1
execute if score #system dituxuanze matches 101 positioned 295 -11 55 run function kards:game/marker/2


tellraw @a [{text: "提示 ",color: "green",bold: true},{text: "地图已切换!",color: "gold"}]

execute store result score system ceshi if entity @e[type=marker]
tellraw @a[tag=op] {score:{name:system,objective:ceshi}}

playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 100 2