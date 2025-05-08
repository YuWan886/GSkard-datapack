scoreboard players add system dituxuanze 1
kill @e[type=armor_stand]
advancement revoke @s only kards:lobby/truns_map
tellraw @a [{"text": "提示 ","color": "green","bold": true},{"text": "地图已切换!","color": "gold"}]
playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 100 2