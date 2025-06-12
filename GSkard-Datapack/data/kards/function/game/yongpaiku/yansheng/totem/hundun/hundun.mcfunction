scoreboard players add @s HealBack 48

execute store result score @s random_hunluantuteng run random value 1..100
execute if score @s random_hunluantuteng matches 1..20 at @s run function kards:game/yongpaiku/yansheng/totem/hundun/1
execute if score @s random_hunluantuteng matches 21..40 at @s run function kards:game/yongpaiku/yansheng/totem/hundun/2
execute if score @s random_hunluantuteng matches 41..60 at @s run function kards:game/yongpaiku/yansheng/totem/hundun/3
execute if score @s random_hunluantuteng matches 61..80 at @s run function kards:game/yongpaiku/yansheng/totem/hundun/4
execute if score @s random_hunluantuteng matches 81..100 at @s run function kards:game/yongpaiku/yansheng/totem/hundun/5

advancement revoke @s only kards:totem/hundun