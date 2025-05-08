team leave @s
execute if entity @s[team=!blue] run tellraw @a [{selector:"@s"},{translate: "lobby.team.join.blue.1",color:"blue",bold:true}]
team join blue
execute at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 2
tp @s 83 226 -26 -90 0