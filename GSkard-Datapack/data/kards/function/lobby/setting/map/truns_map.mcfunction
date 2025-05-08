scoreboard players add system dituxuanze 1
kill @e[type=armor_stand]
advancement revoke @s only kards:lobby/truns_map
tellraw @a [{translate: "lobby.setting.map.truns_map.1",color: "green",bold: true},{translate: "lobby.setting.map.truns_map.2",color: "gold"}]
playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 100 2