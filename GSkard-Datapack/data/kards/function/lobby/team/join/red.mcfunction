team leave @s
execute if entity @s[team=!red] run tellraw @a [{selector:"@s"},{text:"加入了红队",color:"red",bold:true}]
team join red
execute at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 2
tp @s 82 232 -16 90 0