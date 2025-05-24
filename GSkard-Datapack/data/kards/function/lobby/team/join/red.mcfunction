team leave @s
execute if entity @s[team=!red] run tellraw @a [{selector:"@s"},{translate: "lobby.team.join.red.1",color:"red",bold:true}]
team join red
execute at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 2
tp @s 83 226 -26 -90 0