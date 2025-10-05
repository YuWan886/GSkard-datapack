$execute store result storage kards $(UUID).UUID int 1 run data get entity @s UUID.[0]
$execute store result storage kards $(UUID).Value int 1 run scoreboard players get @s Talent_ranjiweiguang_Attack_Time

$function kards:game/player/talent/enable/ranjiweiguang/bossbar/3 with storage kards $(UUID)

