execute if score #system wait_start matches 1.. run return fail

team leave @s
execute if entity @s[team=!red] run tellraw @a [{selector:"@s"},{translate: "kards.function.lobby.team.join.red.1", fallback: "加入了红队",color:"red",bold:true}]
team join red
execute at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 100 2
