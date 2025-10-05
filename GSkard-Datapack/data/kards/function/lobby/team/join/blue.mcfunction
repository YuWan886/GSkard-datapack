execute if score #system wait_start matches 1.. run return fail

team leave @s
execute if entity @s[team=!blue] run tellraw @a [{selector:"@s"},{translate: "kards.function.lobby.team.join.blue.1", fallback: "加入了蓝队",color:"blue",bold:true}]
team join blue
execute at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 2
