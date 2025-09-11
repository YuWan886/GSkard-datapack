$execute store result storage kards $(UUID).UUID int 1 run data get entity @s UUID.[0]
$execute store result storage kards $(UUID).Value int 1 run scoreboard players get @s chengmo

$function kards:game/ingame/custom_buff/chengmo/bossbar/3 with storage kards $(UUID)

